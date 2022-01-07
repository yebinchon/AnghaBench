
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {int bge_intr_task; int bge_tq; } ;


 int FILTER_HANDLED ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
bge_msi_intr(void *arg)
{
 struct bge_softc *sc;

 sc = (struct bge_softc *)arg;




 taskqueue_enqueue(sc->bge_tq, &sc->bge_intr_task);
 return (FILTER_HANDLED);
}
