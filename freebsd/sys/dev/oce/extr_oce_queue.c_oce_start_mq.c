
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oce_mq {TYPE_1__* cq; int parent; } ;
struct TYPE_2__ {int cq_id; } ;


 int TRUE ;
 int oce_arm_cq (int ,int ,int ,int ) ;

int
oce_start_mq(struct oce_mq *mq)
{
 oce_arm_cq(mq->parent, mq->cq->cq_id, 0, TRUE);
 return 0;
}
