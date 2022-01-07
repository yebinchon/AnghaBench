
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct jz4780_mmc_softc {int sc_dev; TYPE_2__* sc_req; } ;
struct TYPE_4__ {TYPE_1__* cmd; } ;
struct TYPE_3__ {int error; } ;


 int JZ_MMC_READ_4 (struct jz4780_mmc_softc*,int ) ;
 int JZ_MSC_IFLG ;
 int JZ_MSC_STAT ;
 int MMC_ERR_TIMEOUT ;
 int device_printf (int ,char*,...) ;
 int jz4780_mmc_req_done (struct jz4780_mmc_softc*) ;

__attribute__((used)) static void
jz4780_mmc_timeout(void *arg)
{
 struct jz4780_mmc_softc *sc;

 sc = (struct jz4780_mmc_softc *)arg;
 if (sc->sc_req != ((void*)0)) {
  device_printf(sc->sc_dev, "controller timeout, rint %#x stat %#x\n",
      JZ_MMC_READ_4(sc, JZ_MSC_IFLG), JZ_MMC_READ_4(sc, JZ_MSC_STAT));
  sc->sc_req->cmd->error = MMC_ERR_TIMEOUT;
  jz4780_mmc_req_done(sc);
 } else
  device_printf(sc->sc_dev,
      "Spurious timeout - no active request\n");
}
