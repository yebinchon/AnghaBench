
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ polling; int holdoff_tmr; } ;
struct sge_qset {TYPE_1__ rspq; } ;
struct qset_params {int coalesce_usecs; } ;


 int max (int,unsigned int) ;

void
t3_update_qset_coalesce(struct sge_qset *qs, const struct qset_params *p)
{

 qs->rspq.holdoff_tmr = max(p->coalesce_usecs * 10, 1U);
 qs->rspq.polling = 0 ;
}
