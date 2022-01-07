
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {long sb_lowat; long sb_hiwat; } ;
struct socket {TYPE_3__ so_snd; } ;
struct icl_pdu_stailq {int dummy; } ;
struct icl_pdu {TYPE_2__* ip_bhs_mbuf; } ;
struct icl_conn {struct socket* ic_socket; } ;
struct TYPE_8__ {long len; } ;
struct TYPE_9__ {TYPE_1__ m_pkthdr; } ;


 int ICL_CONN_LOCK_ASSERT_NOT (struct icl_conn*) ;
 int ICL_DEBUG (char*,...) ;
 int MSG_DONTWAIT ;
 int SOCKBUF_LOCK (TYPE_3__*) ;
 int SOCKBUF_UNLOCK (TYPE_3__*) ;
 int STAILQ_EMPTY (struct icl_pdu_stailq*) ;
 struct icl_pdu* STAILQ_FIRST (struct icl_pdu_stailq*) ;
 int STAILQ_REMOVE_AFTER (struct icl_pdu_stailq*,struct icl_pdu*,int ) ;
 int STAILQ_REMOVE_HEAD (struct icl_pdu_stailq*,int ) ;
 scalar_t__ coalesce ;
 int curthread ;
 int icl_conn_fail (struct icl_conn*) ;
 int icl_pdu_finalize (struct icl_pdu*) ;
 long icl_pdu_size (struct icl_pdu*) ;
 int icl_soft_conn_pdu_free (struct icl_conn*,struct icl_pdu*) ;
 int ip_next ;
 int m_cat (TYPE_2__*,TYPE_2__*) ;
 long sbspace (TYPE_3__*) ;
 int sosend (struct socket*,int *,int *,TYPE_2__*,int *,int ,int ) ;

__attribute__((used)) static void
icl_conn_send_pdus(struct icl_conn *ic, struct icl_pdu_stailq *queue)
{
 struct icl_pdu *request, *request2;
 struct socket *so;
 long available, size, size2;
 int coalesced, error;

 ICL_CONN_LOCK_ASSERT_NOT(ic);

 so = ic->ic_socket;

 SOCKBUF_LOCK(&so->so_snd);






 available = sbspace(&so->so_snd);





 so->so_snd.sb_lowat = so->so_snd.sb_hiwat + 1;
 SOCKBUF_UNLOCK(&so->so_snd);

 while (!STAILQ_EMPTY(queue)) {
  request = STAILQ_FIRST(queue);
  size = icl_pdu_size(request);
  if (available < size) {







   SOCKBUF_LOCK(&so->so_snd);
   available = sbspace(&so->so_snd);
   if (available < size) {

    ICL_DEBUG("no space to send; "
        "have %ld, need %ld",
        available, size);

    so->so_snd.sb_lowat = size;
    SOCKBUF_UNLOCK(&so->so_snd);
    return;
   }
   SOCKBUF_UNLOCK(&so->so_snd);
  }
  STAILQ_REMOVE_HEAD(queue, ip_next);
  error = icl_pdu_finalize(request);
  if (error != 0) {
   ICL_DEBUG("failed to finalize PDU; "
       "dropping connection");
   icl_soft_conn_pdu_free(ic, request);
   icl_conn_fail(ic);
   return;
  }
  if (coalesce) {
   coalesced = 1;
   for (;;) {
    request2 = STAILQ_FIRST(queue);
    if (request2 == ((void*)0))
     break;
    size2 = icl_pdu_size(request2);
    if (available < size + size2)
     break;
    STAILQ_REMOVE_HEAD(queue, ip_next);
    error = icl_pdu_finalize(request2);
    if (error != 0) {
     ICL_DEBUG("failed to finalize PDU; "
         "dropping connection");
     icl_soft_conn_pdu_free(ic, request);
     icl_soft_conn_pdu_free(ic, request2);
     icl_conn_fail(ic);
     return;
    }
    m_cat(request->ip_bhs_mbuf, request2->ip_bhs_mbuf);
    request2->ip_bhs_mbuf = ((void*)0);
    request->ip_bhs_mbuf->m_pkthdr.len += size2;
    size += size2;
    STAILQ_REMOVE_AFTER(queue, request, ip_next);
    icl_soft_conn_pdu_free(ic, request2);
    coalesced++;
   }






  }
  available -= size;
  error = sosend(so, ((void*)0), ((void*)0), request->ip_bhs_mbuf,
      ((void*)0), MSG_DONTWAIT, curthread);
  request->ip_bhs_mbuf = ((void*)0);
  if (error != 0) {
   ICL_DEBUG("failed to send PDU, error %d; "
       "dropping connection", error);
   icl_soft_conn_pdu_free(ic, request);
   icl_conn_fail(ic);
   return;
  }
  icl_soft_conn_pdu_free(ic, request);
 }
}
