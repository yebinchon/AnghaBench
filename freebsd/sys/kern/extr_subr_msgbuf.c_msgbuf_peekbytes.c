
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct msgbuf {scalar_t__ msg_wseq; scalar_t__ msg_size; int msg_lock; int * msg_ptr; } ;


 scalar_t__ MSGBUF_SEQNORM (struct msgbuf*,scalar_t__) ;
 scalar_t__ MSGBUF_SEQSUB (struct msgbuf*,scalar_t__,scalar_t__) ;
 size_t MSGBUF_SEQ_TO_POS (struct msgbuf*,scalar_t__) ;
 int bcopy (int *,char*,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

int
msgbuf_peekbytes(struct msgbuf *mbp, char *buf, int buflen, u_int *seqp)
{
 u_int len, pos, wseq;

 mtx_lock_spin(&mbp->msg_lock);

 if (buf == ((void*)0)) {

  *seqp = MSGBUF_SEQNORM(mbp, mbp->msg_wseq - mbp->msg_size);
  mtx_unlock_spin(&mbp->msg_lock);
  return (0);
 }

 wseq = mbp->msg_wseq;
 len = MSGBUF_SEQSUB(mbp, wseq, *seqp);
 if (len == 0) {
  mtx_unlock_spin(&mbp->msg_lock);
  return (0);
 }
 if (len > mbp->msg_size) {
  *seqp = MSGBUF_SEQNORM(mbp, wseq - mbp->msg_size);
  len = mbp->msg_size;
 }
 pos = MSGBUF_SEQ_TO_POS(mbp, *seqp);
 len = min(len, mbp->msg_size - pos);
 len = min(len, (u_int)buflen);
 bcopy(&mbp->msg_ptr[MSGBUF_SEQ_TO_POS(mbp, *seqp)], buf, len);
 *seqp = MSGBUF_SEQNORM(mbp, *seqp + len);

 mtx_unlock_spin(&mbp->msg_lock);

 return (len);
}
