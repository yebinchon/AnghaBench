
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_pdu_stailq {int dummy; } ;
struct icl_conn {int ic_check_send_space; int ic_send_running; int ic_send_cv; struct icl_pdu_stailq ic_to_send; int ic_lock; scalar_t__ ic_disconnecting; } ;


 int ICL_CONN_LOCK (struct icl_conn*) ;
 int ICL_CONN_UNLOCK (struct icl_conn*) ;
 int STAILQ_CONCAT (struct icl_pdu_stailq*,struct icl_pdu_stailq*) ;
 scalar_t__ STAILQ_EMPTY (struct icl_pdu_stailq*) ;
 int STAILQ_INIT (struct icl_pdu_stailq*) ;
 int STAILQ_SWAP (struct icl_pdu_stailq*,struct icl_pdu_stailq*,int ) ;
 int cv_signal (int *) ;
 int cv_wait (int *,int ) ;
 int icl_conn_send_pdus (struct icl_conn*,struct icl_pdu_stailq*) ;
 int icl_pdu ;
 int kthread_exit () ;

__attribute__((used)) static void
icl_send_thread(void *arg)
{
 struct icl_conn *ic;
 struct icl_pdu_stailq queue;

 ic = arg;

 STAILQ_INIT(&queue);

 ICL_CONN_LOCK(ic);
 for (;;) {
  for (;;) {






   if (STAILQ_EMPTY(&queue))
    STAILQ_SWAP(&ic->ic_to_send, &queue, icl_pdu);

   ic->ic_check_send_space = 0;
   ICL_CONN_UNLOCK(ic);
   icl_conn_send_pdus(ic, &queue);
   ICL_CONN_LOCK(ic);





   if (ic->ic_check_send_space)
    continue;





   if (STAILQ_EMPTY(&queue) &&
       !STAILQ_EMPTY(&ic->ic_to_send))
    continue;






   break;
  }

  if (ic->ic_disconnecting) {

   break;
  }

  cv_wait(&ic->ic_send_cv, ic->ic_lock);
 }





 STAILQ_CONCAT(&ic->ic_to_send, &queue);

 ic->ic_send_running = 0;
 cv_signal(&ic->ic_send_cv);
 ICL_CONN_UNLOCK(ic);
 kthread_exit();
}
