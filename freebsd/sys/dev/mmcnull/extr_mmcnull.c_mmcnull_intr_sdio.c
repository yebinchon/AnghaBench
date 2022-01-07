
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int status; } ;
struct TYPE_5__ {int opcode; int* resp; TYPE_1__* data; } ;
struct ccb_mmcio {TYPE_2__ cmd; } ;
union ccb {TYPE_3__ ccb_h; struct ccb_mmcio mmcio; } ;
struct mmcnull_softc {union ccb* cur_ccb; int dev; int tick; int sc_mtx; } ;
struct TYPE_4__ {int data; } ;



 int CAM_REQ_CMP ;

 int MA_OWNED ;



 int MMC_OCR_CARD_BUSY ;



 int R1_APP_CMD ;
 int R4_IO_MEM_PRESENT ;



 int callout_reset (int *,int,int ,struct mmcnull_softc*) ;
 int device_printf (int ,char*,...) ;
 int hz ;
 int mmcnull_intr_sdio_newintr ;
 int mtx_assert (int *,int ) ;
 int strcpy (int ,char*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
mmcnull_intr_sdio(void *xsc) {
 struct mmcnull_softc *sc;
 union ccb *ccb;
 struct ccb_mmcio *mmcio;

 sc = (struct mmcnull_softc *) xsc;
 mtx_assert(&sc->sc_mtx, MA_OWNED);

 ccb = sc->cur_ccb;
 mmcio = &ccb->mmcio;
 device_printf(sc->dev, "mmcnull_intr: MMC command = %d\n",
        mmcio->cmd.opcode);

 switch (mmcio->cmd.opcode) {
 case 134:
  device_printf(sc->dev, "Reset device\n");
  break;
 case 129:
  mmcio->cmd.resp[0] = 0x1AA;
  break;
 case 135:
  mmcio->cmd.resp[0] = R1_APP_CMD;
  break;
 case 137:
  mmcio->cmd.resp[0] = 0x12345678;
  mmcio->cmd.resp[0] |= ~ R4_IO_MEM_PRESENT;
  break;
 case 128:
 case 131:
  mmcio->cmd.resp[0] = 0x1 << 16;
  break;
 case 138:

  mmcio->cmd.resp[0] = 0x123;
  mmcio->cmd.resp[0] |= MMC_OCR_CARD_BUSY;
  break;
 case 136:
  mmcio->cmd.resp[0] = 0x1234;
  mmcio->cmd.resp[1] = 0x5678;
  mmcio->cmd.resp[2] = 0x9ABC;
  mmcio->cmd.resp[3] = 0xDEF0;
  break;
 case 132:
 case 133:
  strcpy(mmcio->cmd.data->data, "WTF?!");
  break;
 case 130:
  device_printf(sc->dev, "Scheduling interrupt generation...\n");
  callout_reset(&sc->tick, hz / 10, mmcnull_intr_sdio_newintr, sc);
  break;
 default:
  device_printf(sc->dev, "mmcnull_intr_sdio: unknown command\n");
 }
 ccb->ccb_h.status = CAM_REQ_CMP;

 sc->cur_ccb = ((void*)0);
 xpt_done(ccb);
}
