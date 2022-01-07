
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_rr_queue {void* q_lastsub; int q_bionum; int q_thinktime; TYPE_1__* q_sc; } ;
struct TYPE_4__ {int wait_ms; } ;
struct TYPE_3__ {struct g_rr_queue* sc_active; } ;


 int g_savg_add_sample (int *,int) ;
 int get_bounded (int *,int) ;
 TYPE_2__ me ;
 void* ticks ;

__attribute__((used)) static inline void
g_rr_update_thinktime(struct g_rr_queue *qp)
{
 int delta = ticks - qp->q_lastsub, wait = get_bounded(&me.wait_ms, 2);

 if (qp->q_sc->sc_active != qp)
  return;

 qp->q_lastsub = ticks;
 delta = (delta > 2 * wait) ? 2 * wait : delta;
 if (qp->q_bionum > 7)
  g_savg_add_sample(&qp->q_thinktime, delta);
}
