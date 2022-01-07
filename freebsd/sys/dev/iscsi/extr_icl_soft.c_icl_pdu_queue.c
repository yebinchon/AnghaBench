
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_pdu {struct icl_conn* ip_conn; } ;
struct icl_conn {int ic_send_cv; int ic_to_send; int * ic_socket; scalar_t__ ic_disconnecting; } ;


 int ICL_CONN_LOCK_ASSERT (struct icl_conn*) ;
 int ICL_DEBUG (char*) ;
 int STAILQ_EMPTY (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct icl_pdu*,int ) ;
 int cv_signal (int *) ;
 int icl_soft_conn_pdu_free (struct icl_conn*,struct icl_pdu*) ;
 int ip_next ;

__attribute__((used)) static void
icl_pdu_queue(struct icl_pdu *ip)
{
 struct icl_conn *ic;

 ic = ip->ip_conn;

 ICL_CONN_LOCK_ASSERT(ic);

 if (ic->ic_disconnecting || ic->ic_socket == ((void*)0)) {
  ICL_DEBUG("icl_pdu_queue on closed connection");
  icl_soft_conn_pdu_free(ic, ip);
  return;
 }

 if (!STAILQ_EMPTY(&ic->ic_to_send)) {
  STAILQ_INSERT_TAIL(&ic->ic_to_send, ip, ip_next);





  return;
 }

 STAILQ_INSERT_TAIL(&ic->ic_to_send, ip, ip_next);
 cv_signal(&ic->ic_send_cv);
}
