
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int task_reset; } ;


 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

void
sfxge_schedule_reset(struct sfxge_softc *sc)
{
 taskqueue_enqueue(taskqueue_thread, &sc->task_reset);
}
