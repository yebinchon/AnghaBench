
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ so_error; } ;
struct icl_pdu {scalar_t__ ip_ahs_len; TYPE_1__* ip_bhs; } ;
struct icl_conn {size_t ic_receive_len; int (* ic_receive ) (struct icl_pdu*) ;scalar_t__ ic_disconnecting; struct socket* ic_socket; } ;
struct TYPE_2__ {int bhs_opcode; } ;


 int ICL_DEBUG (char*,size_t,...) ;
 int ICL_WARN (char*,int ) ;
 int KASSERT (int ,char*) ;
 int icl_conn_fail (struct icl_conn*) ;
 struct icl_pdu* icl_conn_receive_pdu (struct icl_conn*,size_t*) ;
 int icl_soft_conn_pdu_free (struct icl_conn*,struct icl_pdu*) ;
 int stub1 (struct icl_pdu*) ;

__attribute__((used)) static void
icl_conn_receive_pdus(struct icl_conn *ic, size_t available)
{
 struct icl_pdu *response;
 struct socket *so;

 so = ic->ic_socket;





 KASSERT(so != ((void*)0), ("NULL socket"));

 for (;;) {
  if (ic->ic_disconnecting)
   return;

  if (so->so_error != 0) {
   ICL_DEBUG("connection error %d; "
       "dropping connection", so->so_error);
   icl_conn_fail(ic);
   return;
  }





  if (available < ic->ic_receive_len) {





   return;
  }

  response = icl_conn_receive_pdu(ic, &available);
  if (response == ((void*)0))
   continue;

  if (response->ip_ahs_len > 0) {
   ICL_WARN("received PDU with unsupported "
       "AHS; opcode 0x%x; dropping connection",
       response->ip_bhs->bhs_opcode);
   icl_soft_conn_pdu_free(ic, response);
   icl_conn_fail(ic);
   return;
  }

  (ic->ic_receive)(response);
 }
}
