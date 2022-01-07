
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int tx_task; } ;


 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static void
rsu_start(struct rsu_softc *sc)
{

 taskqueue_enqueue(taskqueue_thread, &sc->tx_task);
}
