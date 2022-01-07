
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {int periodic_task; int taskqueue; } ;


 int RT_DEBUG_PERIODIC ;
 int RT_DPRINTF (struct rt_softc*,int ,char*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
rt_periodic(void *arg)
{
 struct rt_softc *sc;

 sc = arg;
 RT_DPRINTF(sc, RT_DEBUG_PERIODIC, "periodic\n");
 taskqueue_enqueue(sc->taskqueue, &sc->periodic_task);
}
