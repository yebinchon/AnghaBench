
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct mmc_command {int flags; int* resp; } ;
struct jz4780_mmc_softc {TYPE_1__* sc_req; } ;
struct TYPE_2__ {struct mmc_command* cmd; } ;


 int JZ_MMC_READ_2 (struct jz4780_mmc_softc*,int ) ;
 int JZ_MSC_RES ;
 int MMC_RSP_136 ;
 int MMC_RSP_PRESENT ;

__attribute__((used)) static void
jz4780_mmc_read_response(struct jz4780_mmc_softc *sc)
{
 struct mmc_command *cmd;
 int i;

 cmd = sc->sc_req->cmd;
 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136) {
   uint16_t val;

   val = JZ_MMC_READ_2(sc, JZ_MSC_RES);
   for (i = 0; i < 4; i++) {
    cmd->resp[i] = val << 24;
    val = JZ_MMC_READ_2(sc, JZ_MSC_RES);
    cmd->resp[i] |= val << 8;
    val = JZ_MMC_READ_2(sc, JZ_MSC_RES);
    cmd->resp[i] |= val >> 8;
   }
  } else {
   cmd->resp[0] = JZ_MMC_READ_2(sc, JZ_MSC_RES) << 24;
   cmd->resp[0] |= JZ_MMC_READ_2(sc, JZ_MSC_RES) << 8;
   cmd->resp[0] |= JZ_MMC_READ_2(sc, JZ_MSC_RES) & 0xff;
  }
 }
}
