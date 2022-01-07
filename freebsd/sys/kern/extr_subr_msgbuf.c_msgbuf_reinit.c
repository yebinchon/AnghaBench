
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct msgbuf {scalar_t__ msg_magic; int msg_size; scalar_t__ msg_cksum; int msg_lastpri; int msg_lock; int msg_flags; void* msg_ptr; void* msg_rseq; void* msg_wseq; int msg_seqmod; } ;


 int MSGBUF_NEEDNL ;
 void* MSGBUF_SEQNORM (struct msgbuf*,void*) ;
 scalar_t__ MSG_MAGIC ;
 int MTX_SPIN ;
 int SEQMOD (int) ;
 scalar_t__ bootverbose ;
 int bzero (int *,int) ;
 scalar_t__ msgbuf_cksum (struct msgbuf*) ;
 int msgbuf_clear (struct msgbuf*) ;
 int msgbuf_init (struct msgbuf*,void*,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int printf (char*,...) ;

void
msgbuf_reinit(struct msgbuf *mbp, void *ptr, int size)
{
 u_int cksum;

 if (mbp->msg_magic != MSG_MAGIC || mbp->msg_size != size) {
  msgbuf_init(mbp, ptr, size);
  return;
 }
 mbp->msg_seqmod = SEQMOD(size);
 mbp->msg_wseq = MSGBUF_SEQNORM(mbp, mbp->msg_wseq);
 mbp->msg_rseq = MSGBUF_SEQNORM(mbp, mbp->msg_rseq);
        mbp->msg_ptr = ptr;
 cksum = msgbuf_cksum(mbp);
 if (cksum != mbp->msg_cksum) {
  if (bootverbose) {
   printf("msgbuf cksum mismatch (read %x, calc %x)\n",
       mbp->msg_cksum, cksum);
   printf("Old msgbuf not recovered\n");
  }
  msgbuf_clear(mbp);
 }

 mbp->msg_lastpri = -1;

 mbp->msg_flags |= MSGBUF_NEEDNL;
 bzero(&mbp->msg_lock, sizeof(mbp->msg_lock));
 mtx_init(&mbp->msg_lock, "msgbuf", ((void*)0), MTX_SPIN);
}
