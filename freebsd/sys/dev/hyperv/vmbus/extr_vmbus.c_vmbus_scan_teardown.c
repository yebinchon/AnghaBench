
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_softc {int * vmbus_subchtq; int * vmbus_devtq; } ;


 int GIANT_REQUIRED ;
 int Giant ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_free (int *) ;

__attribute__((used)) static void
vmbus_scan_teardown(struct vmbus_softc *sc)
{

 GIANT_REQUIRED;
 if (sc->vmbus_devtq != ((void*)0)) {
  mtx_unlock(&Giant);
  taskqueue_free(sc->vmbus_devtq);
  mtx_lock(&Giant);
  sc->vmbus_devtq = ((void*)0);
 }
 if (sc->vmbus_subchtq != ((void*)0)) {
  mtx_unlock(&Giant);
  taskqueue_free(sc->vmbus_subchtq);
  mtx_lock(&Giant);
  sc->vmbus_subchtq = ((void*)0);
 }
}
