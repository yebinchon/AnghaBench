
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* eq; int task; int tq; int sc; } ;
struct TYPE_3__ {int intr; int eq_id; } ;
typedef int POCE_SOFTC ;
typedef TYPE_2__* POCE_INTR_INFO ;


 int FALSE ;
 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int TRUE ;
 int oce_arm_eq (int ,int ,int ,int ,int ) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
oce_fast_isr(void *arg)
{
 POCE_INTR_INFO ii = (POCE_INTR_INFO) arg;
 POCE_SOFTC sc = ii->sc;

 if (ii->eq == ((void*)0))
  return FILTER_STRAY;

 oce_arm_eq(sc, ii->eq->eq_id, 0, FALSE, TRUE);

 taskqueue_enqueue(ii->tq, &ii->task);

  ii->eq->intr++;

 return FILTER_HANDLED;
}
