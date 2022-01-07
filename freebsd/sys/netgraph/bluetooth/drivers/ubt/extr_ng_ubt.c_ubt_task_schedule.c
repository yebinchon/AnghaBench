
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ubt_softc_p ;
struct TYPE_3__ {int sc_task_flags; int sc_task; int sc_ng_mtx; } ;


 int MA_OWNED ;
 int UBT_FLAG_T_PENDING ;
 int UBT_FLAG_T_START_ALL ;
 int UBT_FLAG_T_STOP_ALL ;
 int mtx_assert (int *,int ) ;
 scalar_t__ taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
ubt_task_schedule(ubt_softc_p sc, int action)
{
 mtx_assert(&sc->sc_ng_mtx, MA_OWNED);
 if (action != 0) {
  if ((action & UBT_FLAG_T_STOP_ALL) != 0)
   sc->sc_task_flags &= ~UBT_FLAG_T_START_ALL;

  sc->sc_task_flags |= action;
 }

 if (sc->sc_task_flags & UBT_FLAG_T_PENDING)
  return;

 if (taskqueue_enqueue(taskqueue_swi, &sc->sc_task) == 0) {
  sc->sc_task_flags |= UBT_FLAG_T_PENDING;
  return;
 }


}
