
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_rr_queue {TYPE_1__* q_sc; } ;
struct TYPE_2__ {int sc_geom; } ;


 int g_sched_put_class (int ,struct g_rr_queue*) ;

__attribute__((used)) static void
g_rr_queue_put(struct g_rr_queue *qp)
{

 g_sched_put_class(qp->q_sc->sc_geom, qp);
}
