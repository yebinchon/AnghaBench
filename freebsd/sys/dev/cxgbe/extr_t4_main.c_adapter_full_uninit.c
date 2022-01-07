
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int flags; int ** tq; } ;


 int ADAPTER_LOCK_ASSERT_NOTOWNED (struct adapter*) ;
 int FULL_INIT_DONE ;
 int nitems (int **) ;
 int t4_teardown_adapter_queues (struct adapter*) ;
 int taskqueue_free (int *) ;

int
adapter_full_uninit(struct adapter *sc)
{
 int i;

 ADAPTER_LOCK_ASSERT_NOTOWNED(sc);

 t4_teardown_adapter_queues(sc);

 for (i = 0; i < nitems(sc->tq) && sc->tq[i]; i++) {
  taskqueue_free(sc->tq[i]);
  sc->tq[i] = ((void*)0);
 }

 sc->flags &= ~FULL_INIT_DONE;

 return (0);
}
