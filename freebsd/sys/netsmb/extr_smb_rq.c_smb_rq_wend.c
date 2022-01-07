
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mb_count; } ;
struct smb_rq {int* sr_wcount; TYPE_1__ sr_rq; } ;


 int SMBERROR (char*) ;

void
smb_rq_wend(struct smb_rq *rqp)
{
 if (rqp->sr_wcount == ((void*)0)) {
  SMBERROR("no wcount\n");
  return;
 }
 if (rqp->sr_rq.mb_count & 1)
  SMBERROR("odd word count\n");
 *rqp->sr_wcount = rqp->sr_rq.mb_count / 2;
}
