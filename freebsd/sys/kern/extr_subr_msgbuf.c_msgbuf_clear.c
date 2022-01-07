
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgbuf {scalar_t__ msg_cksum; scalar_t__ msg_rseq; scalar_t__ msg_wseq; int msg_size; int msg_ptr; } ;


 int bzero (int ,int ) ;

void
msgbuf_clear(struct msgbuf *mbp)
{

 bzero(mbp->msg_ptr, mbp->msg_size);
 mbp->msg_wseq = 0;
 mbp->msg_rseq = 0;
 mbp->msg_cksum = 0;
}
