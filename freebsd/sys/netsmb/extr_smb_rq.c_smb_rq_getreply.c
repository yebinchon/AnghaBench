
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdchain {int dummy; } ;
struct smb_rq {struct mdchain sr_rp; } ;



int
smb_rq_getreply(struct smb_rq *rqp, struct mdchain **mbpp)
{
 *mbpp = &rqp->sr_rp;
 return 0;
}
