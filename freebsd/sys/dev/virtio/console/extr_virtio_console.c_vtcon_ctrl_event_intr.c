
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc {int vtcon_ctrl_task; } ;


 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static void
vtcon_ctrl_event_intr(void *xsc)
{
 struct vtcon_softc *sc;

 sc = xsc;





 taskqueue_enqueue(taskqueue_thread, &sc->vtcon_ctrl_task);
}
