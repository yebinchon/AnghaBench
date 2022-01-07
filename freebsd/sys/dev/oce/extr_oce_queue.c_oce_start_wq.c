
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oce_wq {TYPE_1__* cq; int parent; } ;
struct TYPE_2__ {int cq_id; } ;


 int TRUE ;
 int oce_arm_cq (int ,int ,int ,int ) ;

int
oce_start_wq(struct oce_wq *wq)
{
 oce_arm_cq(wq->parent, wq->cq->cq_id, 0, TRUE);
 return 0;
}
