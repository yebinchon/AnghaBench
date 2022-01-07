
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int enabled; } ;
struct sge_qset {TYPE_2__ lro; } ;
struct port_info {int nqsets; int first_qset; struct adapter* adapter; } ;
struct TYPE_3__ {struct sge_qset* qs; } ;
struct adapter {TYPE_1__ sge; } ;



__attribute__((used)) static int
cxgb_set_lro(struct port_info *p, int enabled)
{
 int i;
 struct adapter *adp = p->adapter;
 struct sge_qset *q;

 for (i = 0; i < p->nqsets; i++) {
  q = &adp->sge.qs[p->first_qset + i];
  q->lro.enabled = (enabled != 0);
 }
 return (0);
}
