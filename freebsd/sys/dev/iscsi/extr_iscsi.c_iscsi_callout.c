
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ isc_enable; } ;
struct iscsi_session {scalar_t__ is_timeout; scalar_t__ is_terminating; int is_conn; scalar_t__ is_login_phase; scalar_t__ is_waiting_for_iscsid; TYPE_1__ is_conf; int is_callout; } ;
struct iscsi_bhs_nop_out {int bhsno_opcode; int bhsno_flags; int bhsno_target_transfer_tag; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;


 int ISCSI_BHS_OPCODE_IMMEDIATE ;
 int ISCSI_BHS_OPCODE_NOP_OUT ;
 int ISCSI_SESSION_LOCK (struct iscsi_session*) ;
 int ISCSI_SESSION_UNLOCK (struct iscsi_session*) ;
 int ISCSI_SESSION_WARN (struct iscsi_session*,char*,...) ;
 int M_NOWAIT ;
 int callout_schedule (int *,int) ;
 int hz ;
 struct icl_pdu* icl_pdu_new (int ,int ) ;
 int iscsi_pdu_queue (struct icl_pdu*) ;
 int iscsi_session_reconnect (struct iscsi_session*) ;
 scalar_t__ iscsid_timeout ;
 scalar_t__ login_timeout ;
 scalar_t__ ping_timeout ;

__attribute__((used)) static void
iscsi_callout(void *context)
{
 struct icl_pdu *request;
 struct iscsi_bhs_nop_out *bhsno;
 struct iscsi_session *is;
 bool reconnect_needed = 0;

 is = context;

 ISCSI_SESSION_LOCK(is);
 if (is->is_terminating) {
  ISCSI_SESSION_UNLOCK(is);
  return;
 }

 callout_schedule(&is->is_callout, 1 * hz);

 if (is->is_conf.isc_enable == 0)
  goto out;

 is->is_timeout++;

 if (is->is_waiting_for_iscsid) {
  if (iscsid_timeout > 0 && is->is_timeout > iscsid_timeout) {
   ISCSI_SESSION_WARN(is, "timed out waiting for iscsid(8) "
       "for %d seconds; reconnecting",
       is->is_timeout);
   reconnect_needed = 1;
  }
  goto out;
 }

 if (is->is_login_phase) {
  if (login_timeout > 0 && is->is_timeout > login_timeout) {
   ISCSI_SESSION_WARN(is, "login timed out after %d seconds; "
       "reconnecting", is->is_timeout);
   reconnect_needed = 1;
  }
  goto out;
 }

 if (ping_timeout <= 0) {





  is->is_timeout = 0;
  goto out;
 }

 if (is->is_timeout >= ping_timeout) {
  ISCSI_SESSION_WARN(is, "no ping reply (NOP-In) after %d seconds; "
      "reconnecting", ping_timeout);
  reconnect_needed = 1;
  goto out;
 }

 ISCSI_SESSION_UNLOCK(is);
 if (is->is_timeout < 2)
  return;

 request = icl_pdu_new(is->is_conn, M_NOWAIT);
 if (request == ((void*)0)) {
  ISCSI_SESSION_WARN(is, "failed to allocate PDU");
  return;
 }
 bhsno = (struct iscsi_bhs_nop_out *)request->ip_bhs;
 bhsno->bhsno_opcode = ISCSI_BHS_OPCODE_NOP_OUT |
     ISCSI_BHS_OPCODE_IMMEDIATE;
 bhsno->bhsno_flags = 0x80;
 bhsno->bhsno_target_transfer_tag = 0xffffffff;
 iscsi_pdu_queue(request);
 return;

out:
 if (is->is_terminating) {
  ISCSI_SESSION_UNLOCK(is);
  return;
 }

 ISCSI_SESSION_UNLOCK(is);

 if (reconnect_needed)
  iscsi_session_reconnect(is);
}
