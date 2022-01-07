
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mb_count; } ;
struct smb_rq {int * sr_bcount; TYPE_1__ sr_rq; } ;


 int SMBERROR (char*,...) ;
 int le16enc (int *,int) ;

void
smb_rq_bend(struct smb_rq *rqp)
{
 int bcnt;

 if (rqp->sr_bcount == ((void*)0)) {
  SMBERROR("no bcount\n");
  return;
 }
 bcnt = rqp->sr_rq.mb_count;
 if (bcnt > 0xffff)
  SMBERROR("byte count too large (%d)\n", bcnt);
 le16enc(rqp->sr_bcount, bcnt);
}
