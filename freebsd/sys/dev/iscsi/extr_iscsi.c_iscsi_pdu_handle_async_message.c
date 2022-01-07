
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct iscsi_bhs_asynchronous_message {int bhsam_async_event; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;





 int ISCSI_SESSION_WARN (struct iscsi_session*,char*,...) ;
 struct iscsi_session* PDU_SESSION (struct icl_pdu*) ;
 int icl_pdu_free (struct icl_pdu*) ;
 int iscsi_session_logout (struct iscsi_session*) ;
 int iscsi_session_terminate (struct iscsi_session*) ;

__attribute__((used)) static void
iscsi_pdu_handle_async_message(struct icl_pdu *response)
{
 struct iscsi_bhs_asynchronous_message *bhsam;
 struct iscsi_session *is;

 is = PDU_SESSION(response);
 bhsam = (struct iscsi_bhs_asynchronous_message *)response->ip_bhs;
 switch (bhsam->bhsam_async_event) {
 case 130:
  ISCSI_SESSION_WARN(is, "target requests logout; removing session");
  iscsi_session_logout(is);
  iscsi_session_terminate(is);
  break;
 case 129:
  ISCSI_SESSION_WARN(is, "target indicates it will drop the connection");
  break;
 case 128:
  ISCSI_SESSION_WARN(is, "target indicates it will drop the session");
  break;
 default:




  ISCSI_SESSION_WARN(is, "ignoring AsyncEvent %d", bhsam->bhsam_async_event);
  break;
 }

 icl_pdu_free(response);
}
