
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t sb_lowat; int sb_hiwat; int sb_mtx; } ;
struct socket {TYPE_1__ so_rcv; } ;
struct icl_conn {size_t ic_receive_len; int ic_receive_running; int ic_send_cv; int ic_receive_cv; scalar_t__ ic_disconnecting; struct socket* ic_socket; } ;


 int ICL_CONN_LOCK (struct icl_conn*) ;
 int ICL_CONN_UNLOCK (struct icl_conn*) ;
 int SOCKBUF_LOCK (TYPE_1__*) ;
 int SOCKBUF_UNLOCK (TYPE_1__*) ;
 int cv_signal (int *) ;
 int cv_wait (int *,int *) ;
 int icl_conn_receive_pdus (struct icl_conn*,size_t) ;
 int kthread_exit () ;
 size_t sbavail (TYPE_1__*) ;

__attribute__((used)) static void
icl_receive_thread(void *arg)
{
 struct icl_conn *ic;
 size_t available;
 struct socket *so;

 ic = arg;
 so = ic->ic_socket;

 for (;;) {
  if (ic->ic_disconnecting) {

   break;
  }







  SOCKBUF_LOCK(&so->so_rcv);
  available = sbavail(&so->so_rcv);
  if (available < ic->ic_receive_len) {
   so->so_rcv.sb_lowat = ic->ic_receive_len;
   cv_wait(&ic->ic_receive_cv, &so->so_rcv.sb_mtx);
  } else
   so->so_rcv.sb_lowat = so->so_rcv.sb_hiwat + 1;
  SOCKBUF_UNLOCK(&so->so_rcv);

  icl_conn_receive_pdus(ic, available);
 }

 ICL_CONN_LOCK(ic);
 ic->ic_receive_running = 0;
 cv_signal(&ic->ic_send_cv);
 ICL_CONN_UNLOCK(ic);
 kthread_exit();
}
