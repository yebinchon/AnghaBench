
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_rspq {int unhandled_irqs; } ;
struct sge_qset {struct sge_rspq rspq; TYPE_1__* port; } ;
typedef int adapter_t ;
struct TYPE_2__ {int * adapter; } ;


 scalar_t__ process_responses_gts (int *,struct sge_rspq*) ;

void
t3_intr_msix(void *data)
{
 struct sge_qset *qs = data;
 adapter_t *adap = qs->port->adapter;
 struct sge_rspq *rspq = &qs->rspq;

 if (process_responses_gts(adap, rspq) == 0)
  rspq->unhandled_irqs++;
}
