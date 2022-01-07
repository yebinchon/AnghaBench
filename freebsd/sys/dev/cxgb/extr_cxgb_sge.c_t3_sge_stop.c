
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sge_qset {TYPE_4__* txq; } ;
struct TYPE_10__ {struct sge_qset* qs; } ;
struct TYPE_8__ {int nports; } ;
struct TYPE_12__ {int * tq; TYPE_3__ sge; TYPE_2__* port; TYPE_1__ params; } ;
typedef TYPE_5__ adapter_t ;
struct TYPE_11__ {int qresume_task; } ;
struct TYPE_9__ {scalar_t__ nqsets; } ;


 int A_SG_CONTROL ;
 int F_GLOBALENABLE ;
 size_t TXQ_CTRL ;
 size_t TXQ_OFLD ;
 int t3_set_reg_field (TYPE_5__*,int ,int ,int ) ;
 int taskqueue_drain (int *,int *) ;

void
t3_sge_stop(adapter_t *sc)
{
 int i, nqsets;

 t3_set_reg_field(sc, A_SG_CONTROL, F_GLOBALENABLE, 0);

 if (sc->tq == ((void*)0))
  return;

 for (nqsets = i = 0; i < (sc)->params.nports; i++)
  nqsets += sc->port[i].nqsets;
}
