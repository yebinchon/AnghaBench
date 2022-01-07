
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbchain {int dummy; } ;
struct smb_rq {struct mbchain sr_rq; } ;



int
smb_rq_getrequest(struct smb_rq *rqp, struct mbchain **mbpp)
{
 *mbpp = &rqp->sr_rq;
 return 0;
}
