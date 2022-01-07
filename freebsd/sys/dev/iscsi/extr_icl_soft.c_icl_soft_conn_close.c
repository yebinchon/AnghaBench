
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sb_upcall; } ;
struct socket {TYPE_1__ so_rcv; TYPE_1__ so_snd; } ;
struct icl_pdu {int dummy; } ;
struct icl_conn {int ic_disconnecting; int ic_to_send; struct icl_pdu* ic_receive_pdu; struct socket* ic_socket; int ic_lock; int ic_send_cv; int ic_receive_cv; scalar_t__ ic_send_running; scalar_t__ ic_receive_running; } ;


 int ICL_CONN_LOCK (struct icl_conn*) ;
 int ICL_CONN_UNLOCK (struct icl_conn*) ;
 int KASSERT (int ,char*) ;
 int SOCKBUF_LOCK (TYPE_1__*) ;
 int SOCKBUF_UNLOCK (TYPE_1__*) ;
 int SO_RCV ;
 int SO_SND ;
 int STAILQ_EMPTY (int *) ;
 struct icl_pdu* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int cv_signal (int *) ;
 int cv_wait (int *,int ) ;
 int icl_soft_conn_pdu_free (struct icl_conn*,struct icl_pdu*) ;
 int ip_next ;
 int soclose (struct socket*) ;
 int soupcall_clear (struct socket*,int ) ;

void
icl_soft_conn_close(struct icl_conn *ic)
{
 struct icl_pdu *pdu;
 struct socket *so;

 ICL_CONN_LOCK(ic);




 ic->ic_disconnecting = 1;
 while (ic->ic_receive_running || ic->ic_send_running) {
  cv_signal(&ic->ic_receive_cv);
  cv_signal(&ic->ic_send_cv);
  cv_wait(&ic->ic_send_cv, ic->ic_lock);
 }


 so = ic->ic_socket;
 if (so == ((void*)0)) {
  ICL_CONN_UNLOCK(ic);
  return;
 }
 ic->ic_socket = ((void*)0);




 ICL_CONN_UNLOCK(ic);
 SOCKBUF_LOCK(&so->so_snd);
 if (so->so_snd.sb_upcall != ((void*)0))
  soupcall_clear(so, SO_SND);
 SOCKBUF_UNLOCK(&so->so_snd);
 SOCKBUF_LOCK(&so->so_rcv);
 if (so->so_rcv.sb_upcall != ((void*)0))
  soupcall_clear(so, SO_RCV);
 SOCKBUF_UNLOCK(&so->so_rcv);
 soclose(so);
 ICL_CONN_LOCK(ic);

 if (ic->ic_receive_pdu != ((void*)0)) {

  icl_soft_conn_pdu_free(ic, ic->ic_receive_pdu);
  ic->ic_receive_pdu = ((void*)0);
 }




 while (!STAILQ_EMPTY(&ic->ic_to_send)) {
  pdu = STAILQ_FIRST(&ic->ic_to_send);
  STAILQ_REMOVE_HEAD(&ic->ic_to_send, ip_next);
  icl_soft_conn_pdu_free(ic, pdu);
 }

 KASSERT(STAILQ_EMPTY(&ic->ic_to_send),
     ("destroying session with non-empty send queue"));
 ICL_CONN_UNLOCK(ic);
}
