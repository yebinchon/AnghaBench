
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nisodma; int (* ibr ) (TYPE_2__*) ;int (* irx_enable ) (TYPE_2__*,int) ;int dev; } ;
struct fwohci_softc {TYPE_2__ fc; TYPE_1__* ir; } ;
struct fw_xferq {int flag; int stfree; int stdma; } ;
struct fw_bulkxfer {int dummy; } ;
typedef int device_t ;
struct TYPE_4__ {struct fw_xferq xferq; } ;


 int FWXFERQ_RUNNING ;
 struct fw_bulkxfer* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct fw_bulkxfer*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int bus_generic_resume (int ) ;
 int device_printf (int ,char*,int) ;
 int fwohci_reset (struct fwohci_softc*,int ) ;
 int link ;
 int stub1 (TYPE_2__*,int) ;
 int stub2 (TYPE_2__*) ;

int
fwohci_resume(struct fwohci_softc *sc, device_t dev)
{
 int i;
 struct fw_xferq *ir;
 struct fw_bulkxfer *chunk;

 fwohci_reset(sc, dev);

 for (i = 0; i < sc->fc.nisodma; i++) {
  ir = &sc->ir[i].xferq;
  if ((ir->flag & FWXFERQ_RUNNING) != 0) {
   device_printf(sc->fc.dev,
    "resume iso receive ch: %d\n", i);
   ir->flag &= ~FWXFERQ_RUNNING;

   while ((chunk = STAILQ_FIRST(&ir->stdma)) != ((void*)0)) {
    STAILQ_REMOVE_HEAD(&ir->stdma, link);
    STAILQ_INSERT_TAIL(&ir->stfree, chunk, link);
   }
   sc->fc.irx_enable(&sc->fc, i);
  }
 }

 bus_generic_resume(dev);
 sc->fc.ibr(&sc->fc);
 return 0;
}
