
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mmc_request {struct mmc_command* cmd; } ;
struct mmc_command {int flags; int opcode; int arg; TYPE_1__* data; int error; } ;
struct jz4780_mmc_softc {int sc_cmdat; scalar_t__ sc_dma_inuse; int sc_intr_wait; int sc_intr_mask; int sc_timeout; int sc_timeoutc; int sc_dev; scalar_t__ sc_intr_seen; scalar_t__ sc_resid; struct mmc_request* sc_req; } ;
typedef int device_t ;
struct TYPE_2__ {int flags; int len; } ;


 int EBUSY ;
 int JZ_AUTO_CMD12 ;
 int JZ_BUSY ;
 int JZ_CLOCK_START ;
 int JZ_DATA_EN ;
 int JZ_INIT ;
 int JZ_INT_AUTO_CMD12_DONE ;
 int JZ_INT_DATA_TRAN_DONE ;
 int JZ_INT_DMAEND ;
 int JZ_INT_END_CMD_RES ;
 int JZ_INT_PRG_DONE ;
 int JZ_INT_RXFIFO_RD_REQ ;
 int JZ_INT_TXFIFO_WR_REQ ;
 int JZ_MMC_LOCK (struct jz4780_mmc_softc*) ;
 int JZ_MMC_UNLOCK (struct jz4780_mmc_softc*) ;
 int JZ_MMC_WRITE_4 (struct jz4780_mmc_softc*,int ,int) ;
 int JZ_MSC_ARG ;
 int JZ_MSC_BLKLEN ;
 int JZ_MSC_CMD ;
 int JZ_MSC_CMDAT ;
 int JZ_MSC_CTRL ;
 int JZ_MSC_DMAC ;
 int JZ_MSC_IMASK ;
 int JZ_MSC_NOB ;
 int JZ_RES_R1 ;
 int JZ_RES_R2 ;
 int JZ_RES_R3 ;
 int JZ_START_OP ;
 int JZ_STREAM ;
 int JZ_WRITE ;
 int MMC_DATA_MULTI ;
 int MMC_DATA_STREAM ;
 int MMC_DATA_WRITE ;
 int MMC_ERR_NONE ;
 int MMC_GO_IDLE_STATE ;
 int MMC_RSP (int) ;
 int MMC_RSP_BUSY ;




 int MMC_SECTOR_SIZE ;
 int callout_reset (int *,int,int ,struct jz4780_mmc_softc*) ;
 struct jz4780_mmc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int,int,int,int) ;
 int hz ;
 scalar_t__ jz4780_mmc_pio_mode ;
 int jz4780_mmc_prepare_dma (struct jz4780_mmc_softc*) ;
 int jz4780_mmc_timeout ;
 int min (int,int ) ;

__attribute__((used)) static int
jz4780_mmc_request(device_t bus, device_t child, struct mmc_request *req)
{
 struct jz4780_mmc_softc *sc;
 struct mmc_command *cmd;
 uint32_t cmdat, iwait;
 int blksz;

 sc = device_get_softc(bus);
 JZ_MMC_LOCK(sc);
 if (sc->sc_req != ((void*)0)) {
  JZ_MMC_UNLOCK(sc);
  return (EBUSY);
 }

 cmdat = sc->sc_cmdat;
 iwait = JZ_INT_END_CMD_RES;


 cmd = req->cmd;
 switch (MMC_RSP(cmd->flags)) {
 case 131:
 case 130:
  cmdat |= JZ_RES_R1;
  break;
 case 129:
  cmdat |= JZ_RES_R2;
  break;
 case 128:
  cmdat |= JZ_RES_R3;
  break;
 };
 if (cmd->opcode == MMC_GO_IDLE_STATE)
  cmdat |= JZ_INIT;
 if (cmd->flags & MMC_RSP_BUSY) {
  cmdat |= JZ_BUSY;
  iwait |= JZ_INT_PRG_DONE;
 }

 sc->sc_req = req;
 sc->sc_resid = 0;
 cmd->error = MMC_ERR_NONE;

 if (cmd->data != ((void*)0)) {
  cmdat |= JZ_DATA_EN;
  if (cmd->data->flags & MMC_DATA_MULTI) {
   cmdat |= JZ_AUTO_CMD12;
   iwait |= JZ_INT_AUTO_CMD12_DONE;
  }
  if (cmd->data->flags & MMC_DATA_WRITE) {
   cmdat |= JZ_WRITE;
   iwait |= JZ_INT_PRG_DONE;
  }
  if (cmd->data->flags & MMC_DATA_STREAM)
   cmdat |= JZ_STREAM;
  else
   iwait |= JZ_INT_DATA_TRAN_DONE;

  blksz = min(cmd->data->len, MMC_SECTOR_SIZE);
  JZ_MMC_WRITE_4(sc, JZ_MSC_BLKLEN, blksz);
  JZ_MMC_WRITE_4(sc, JZ_MSC_NOB, cmd->data->len / blksz);


  if (jz4780_mmc_pio_mode == 0)
   jz4780_mmc_prepare_dma(sc);
  if (sc->sc_dma_inuse != 0) {

   iwait |= JZ_INT_DMAEND;
  } else {
   iwait |= (cmd->data->flags & MMC_DATA_WRITE) ?
       JZ_INT_TXFIFO_WR_REQ : JZ_INT_RXFIFO_RD_REQ;
   JZ_MMC_WRITE_4(sc, JZ_MSC_DMAC, 0);
  }
 }

 sc->sc_intr_seen = 0;
 sc->sc_intr_wait = iwait;
 JZ_MMC_WRITE_4(sc, JZ_MSC_IMASK, ~(sc->sc_intr_mask | iwait));







 JZ_MMC_WRITE_4(sc, JZ_MSC_ARG, cmd->arg);
 JZ_MMC_WRITE_4(sc, JZ_MSC_CMD, cmd->opcode);
 JZ_MMC_WRITE_4(sc, JZ_MSC_CMDAT, cmdat);

 JZ_MMC_WRITE_4(sc, JZ_MSC_CTRL, JZ_START_OP | JZ_CLOCK_START);

 callout_reset(&sc->sc_timeoutc, sc->sc_timeout * hz,
     jz4780_mmc_timeout, sc);
 JZ_MMC_UNLOCK(sc);

 return (0);
}
