
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct msgbuf {scalar_t__ msg_wseq; scalar_t__ msg_size; int msg_lock; void* msg_rseq; scalar_t__* msg_ptr; } ;


 void* MSGBUF_SEQNORM (struct msgbuf*,scalar_t__) ;
 scalar_t__ MSGBUF_SEQSUB (struct msgbuf*,scalar_t__,void*) ;
 size_t MSGBUF_SEQ_TO_POS (struct msgbuf*,void*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

int
msgbuf_getchar(struct msgbuf *mbp)
{
 u_int len, wseq;
 int c;

 mtx_lock_spin(&mbp->msg_lock);

 wseq = mbp->msg_wseq;
 len = MSGBUF_SEQSUB(mbp, wseq, mbp->msg_rseq);
 if (len == 0) {
  mtx_unlock_spin(&mbp->msg_lock);
  return (-1);
 }
 if (len > mbp->msg_size)
  mbp->msg_rseq = MSGBUF_SEQNORM(mbp, wseq - mbp->msg_size);
 c = (u_char)mbp->msg_ptr[MSGBUF_SEQ_TO_POS(mbp, mbp->msg_rseq)];
 mbp->msg_rseq = MSGBUF_SEQNORM(mbp, mbp->msg_rseq + 1);

 mtx_unlock_spin(&mbp->msg_lock);

 return (c);
}
