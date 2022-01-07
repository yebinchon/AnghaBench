
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {scalar_t__ mb_count; } ;
struct smb_rq {TYPE_1__ sr_rq; int sr_bcount; } ;


 int mb_reserve (TYPE_1__*,int) ;

void
smb_rq_bstart(struct smb_rq *rqp)
{
 rqp->sr_bcount = mb_reserve(&rqp->sr_rq, sizeof(u_short));
 rqp->sr_rq.mb_count = 0;
}
