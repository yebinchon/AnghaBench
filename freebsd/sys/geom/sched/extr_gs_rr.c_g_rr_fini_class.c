
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_rr_queue {TYPE_1__* q_sc; int q_bioq; } ;
struct TYPE_4__ {int queues; } ;
struct TYPE_3__ {int sc_nqueues; } ;


 int KASSERT (int ,char*) ;
 int * bioq_first (int *) ;
 TYPE_2__ me ;

__attribute__((used)) static void
g_rr_fini_class(void *data, void *priv)
{
 struct g_rr_queue *qp = priv;

 KASSERT(bioq_first(&qp->q_bioq) == ((void*)0),
   ("released nonempty queue"));
 qp->q_sc->sc_nqueues--;
 me.queues--;
}
