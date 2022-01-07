
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nisodma; int * taskqueue; int task_timeout; int * config_rom; } ;
struct fwohci_softc {TYPE_1__ fc; int fwohci_task_dma; int fwohci_task_sid; int fwohci_task_busreset; int * ir; int * it; int atrs; int atrq; int arrs; int arrq; int crom_dma; int sid_dma; int * sid_buf; } ;
typedef int device_t ;


 int fwdma_free (TYPE_1__*,int *) ;
 int fwohci_db_free (int *) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

int
fwohci_detach(struct fwohci_softc *sc, device_t dev)
{
 int i;

 if (sc->sid_buf != ((void*)0))
  fwdma_free(&sc->fc, &sc->sid_dma);
 if (sc->fc.config_rom != ((void*)0))
  fwdma_free(&sc->fc, &sc->crom_dma);

 fwohci_db_free(&sc->arrq);
 fwohci_db_free(&sc->arrs);

 fwohci_db_free(&sc->atrq);
 fwohci_db_free(&sc->atrs);

 for (i = 0; i < sc->fc.nisodma; i++) {
  fwohci_db_free(&sc->it[i]);
  fwohci_db_free(&sc->ir[i]);
 }
 if (sc->fc.taskqueue != ((void*)0)) {
  taskqueue_drain(sc->fc.taskqueue, &sc->fwohci_task_busreset);
  taskqueue_drain(sc->fc.taskqueue, &sc->fwohci_task_sid);
  taskqueue_drain(sc->fc.taskqueue, &sc->fwohci_task_dma);
  taskqueue_drain(sc->fc.taskqueue, &sc->fc.task_timeout);
  taskqueue_free(sc->fc.taskqueue);
  sc->fc.taskqueue = ((void*)0);
 }

 return 0;
}
