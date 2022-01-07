
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_pdu {int dummy; } ;


 int ISCSI_SESSION_DEBUG (int ,char*) ;
 int PDU_SESSION (struct icl_pdu*) ;
 int icl_pdu_free (struct icl_pdu*) ;

__attribute__((used)) static void
iscsi_pdu_handle_logout_response(struct icl_pdu *response)
{

 ISCSI_SESSION_DEBUG(PDU_SESSION(response), "logout response");
 icl_pdu_free(response);
}
