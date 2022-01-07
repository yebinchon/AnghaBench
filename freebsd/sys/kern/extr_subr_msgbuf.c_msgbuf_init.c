
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgbuf {int msg_size; int msg_lastpri; int msg_lock; scalar_t__ msg_flags; int msg_magic; int msg_seqmod; void* msg_ptr; } ;


 int MSG_MAGIC ;
 int MTX_SPIN ;
 int SEQMOD (int) ;
 int bzero (int *,int) ;
 int msgbuf_clear (struct msgbuf*) ;
 int mtx_init (int *,char*,int *,int ) ;

void
msgbuf_init(struct msgbuf *mbp, void *ptr, int size)
{

 mbp->msg_ptr = ptr;
 mbp->msg_size = size;
 mbp->msg_seqmod = SEQMOD(size);
 msgbuf_clear(mbp);
 mbp->msg_magic = MSG_MAGIC;
 mbp->msg_lastpri = -1;
 mbp->msg_flags = 0;
 bzero(&mbp->msg_lock, sizeof(mbp->msg_lock));
 mtx_init(&mbp->msg_lock, "msgbuf", ((void*)0), MTX_SPIN);
}
