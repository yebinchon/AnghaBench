
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tail; scalar_t__ head; scalar_t__ count; } ;
struct psm_softc {int state; int pqueue_end; int pqueue_start; int softcallout; TYPE_1__ queue; } ;


 int PSM_SOFTARMED ;
 int callout_stop (int *) ;

__attribute__((used)) static void
dropqueue(struct psm_softc *sc)
{

 sc->queue.count = 0;
 sc->queue.head = 0;
 sc->queue.tail = 0;
 if ((sc->state & PSM_SOFTARMED) != 0) {
  sc->state &= ~PSM_SOFTARMED;
  callout_stop(&sc->softcallout);
 }
 sc->pqueue_start = sc->pqueue_end;
}
