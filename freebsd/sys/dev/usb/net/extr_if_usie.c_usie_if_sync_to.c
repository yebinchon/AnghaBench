
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usie_softc {int sc_if_sync_task; } ;


 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static void
usie_if_sync_to(void *arg)
{
 struct usie_softc *sc = arg;

 taskqueue_enqueue(taskqueue_thread, &sc->sc_if_sync_task);
}
