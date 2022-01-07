
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgbuf {int msg_lock; int msg_wseq; } ;


 int msgbuf_do_addchar (struct msgbuf*,int *,int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

void
msgbuf_addchar(struct msgbuf *mbp, int c)
{
 mtx_lock_spin(&mbp->msg_lock);

 msgbuf_do_addchar(mbp, &mbp->msg_wseq, c);

 mtx_unlock_spin(&mbp->msg_lock);
}
