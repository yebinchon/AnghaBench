
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_rr_softc {int sc_nqueues; } ;
struct g_rr_queue {int q_budget; int q_slice_duration; int q_wait_ticks; struct g_rr_softc* q_sc; int q_bioq; } ;
struct TYPE_2__ {int queues; int wait_ms; int quantum_ms; int quantum_kb; } ;


 int bioq_init (int *) ;
 int get_bounded (int *,int) ;
 TYPE_1__ me ;

__attribute__((used)) static int
g_rr_init_class(void *data, void *priv)
{
 struct g_rr_softc *sc = data;
 struct g_rr_queue *qp = priv;

 bioq_init(&qp->q_bioq);
 qp->q_budget = 1024 * get_bounded(&me.quantum_kb, 0);
 qp->q_slice_duration = get_bounded(&me.quantum_ms, 2);
 qp->q_wait_ticks = get_bounded(&me.wait_ms, 2);

 qp->q_sc = sc;
 qp->q_sc->sc_nqueues++;
 me.queues++;

 return (0);
}
