
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct msgbuf {scalar_t__ msg_size; int msg_rseq; int msg_wseq; } ;


 scalar_t__ MSGBUF_SEQSUB (struct msgbuf*,int ,int ) ;

int
msgbuf_getcount(struct msgbuf *mbp)
{
 u_int len;

 len = MSGBUF_SEQSUB(mbp, mbp->msg_wseq, mbp->msg_rseq);
 if (len > mbp->msg_size)
  len = mbp->msg_size;
 return (len);
}
