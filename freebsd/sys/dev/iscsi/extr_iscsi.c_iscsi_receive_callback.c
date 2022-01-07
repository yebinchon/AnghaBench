
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_session {int is_login_cv; struct icl_pdu* is_login_pdu; scalar_t__ is_login_phase; } ;
struct icl_pdu {TYPE_1__* ip_bhs; } ;
struct TYPE_2__ {int bhs_opcode; } ;
 int ISCSI_SESSION_LOCK (struct iscsi_session*) ;
 int ISCSI_SESSION_LOCK_ASSERT_NOT (struct iscsi_session*) ;
 int ISCSI_SESSION_UNLOCK (struct iscsi_session*) ;
 int ISCSI_SESSION_WARN (struct iscsi_session*,char*,int) ;
 struct iscsi_session* PDU_SESSION (struct icl_pdu*) ;
 int cv_signal (int *) ;
 int icl_pdu_free (struct icl_pdu*) ;
 int iscsi_pdu_handle_async_message (struct icl_pdu*) ;
 int iscsi_pdu_handle_data_in (struct icl_pdu*) ;
 int iscsi_pdu_handle_logout_response (struct icl_pdu*) ;
 int iscsi_pdu_handle_nop_in (struct icl_pdu*) ;
 int iscsi_pdu_handle_r2t (struct icl_pdu*) ;
 int iscsi_pdu_handle_reject (struct icl_pdu*) ;
 int iscsi_pdu_handle_scsi_response (struct icl_pdu*) ;
 int iscsi_pdu_handle_task_response (struct icl_pdu*) ;
 int iscsi_pdu_update_statsn (struct icl_pdu*) ;
 int iscsi_session_reconnect (struct iscsi_session*) ;

__attribute__((used)) static void
iscsi_receive_callback(struct icl_pdu *response)
{
 struct iscsi_session *is;

 is = PDU_SESSION(response);

 ISCSI_SESSION_LOCK(is);

 iscsi_pdu_update_statsn(response);
 switch (response->ip_bhs->bhs_opcode) {
 case 133:
  iscsi_pdu_handle_nop_in(response);
  ISCSI_SESSION_UNLOCK(is);
  break;
 case 129:
  iscsi_pdu_handle_scsi_response(response);

  ISCSI_SESSION_LOCK_ASSERT_NOT(is);
  break;
 case 128:
  iscsi_pdu_handle_task_response(response);
  ISCSI_SESSION_UNLOCK(is);
  break;
 case 130:
  iscsi_pdu_handle_data_in(response);

  ISCSI_SESSION_LOCK_ASSERT_NOT(is);
  break;
 case 134:
  iscsi_pdu_handle_logout_response(response);
  ISCSI_SESSION_UNLOCK(is);
  break;
 case 132:
  iscsi_pdu_handle_r2t(response);
  ISCSI_SESSION_UNLOCK(is);
  break;
 case 135:
  iscsi_pdu_handle_async_message(response);
  ISCSI_SESSION_UNLOCK(is);
  break;
 case 131:
  iscsi_pdu_handle_reject(response);
  ISCSI_SESSION_UNLOCK(is);
  break;
 default:
  ISCSI_SESSION_WARN(is, "received PDU with unsupported "
      "opcode 0x%x; reconnecting",
      response->ip_bhs->bhs_opcode);
  iscsi_session_reconnect(is);
  ISCSI_SESSION_UNLOCK(is);
  icl_pdu_free(response);
 }
}
