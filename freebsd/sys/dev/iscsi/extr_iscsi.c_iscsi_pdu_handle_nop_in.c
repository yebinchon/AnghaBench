
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct iscsi_bhs_nop_out {int bhsno_opcode; int bhsno_flags; int bhsno_initiator_task_tag; int bhsno_target_transfer_tag; } ;
struct iscsi_bhs_nop_in {int bhsni_target_transfer_tag; } ;
struct icl_pdu {scalar_t__ ip_bhs; int ip_conn; } ;


 int ISCSI_BHS_OPCODE_IMMEDIATE ;
 int ISCSI_BHS_OPCODE_NOP_OUT ;
 int ISCSI_SESSION_WARN (struct iscsi_session*,char*) ;
 int M_ISCSI ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct iscsi_session* PDU_SESSION (struct icl_pdu*) ;
 int free (void*,int ) ;
 int icl_pdu_append_data (struct icl_pdu*,void*,size_t,int) ;
 size_t icl_pdu_data_segment_length (struct icl_pdu*) ;
 int icl_pdu_free (struct icl_pdu*) ;
 int icl_pdu_get_data (struct icl_pdu*,int ,void*,size_t) ;
 struct icl_pdu* icl_pdu_new (int ,int) ;
 int iscsi_pdu_queue_locked (struct icl_pdu*) ;
 int iscsi_session_reconnect (struct iscsi_session*) ;
 void* malloc (size_t,int ,int) ;

__attribute__((used)) static void
iscsi_pdu_handle_nop_in(struct icl_pdu *response)
{
 struct iscsi_session *is;
 struct iscsi_bhs_nop_out *bhsno;
 struct iscsi_bhs_nop_in *bhsni;
 struct icl_pdu *request;
 void *data = ((void*)0);
 size_t datasize;
 int error;

 is = PDU_SESSION(response);
 bhsni = (struct iscsi_bhs_nop_in *)response->ip_bhs;

 if (bhsni->bhsni_target_transfer_tag == 0xffffffff) {




  icl_pdu_free(response);
  return;
 }

 datasize = icl_pdu_data_segment_length(response);
 if (datasize > 0) {
  data = malloc(datasize, M_ISCSI, M_NOWAIT | M_ZERO);
  if (data == ((void*)0)) {
   ISCSI_SESSION_WARN(is, "failed to allocate memory; "
       "reconnecting");
   icl_pdu_free(response);
   iscsi_session_reconnect(is);
   return;
  }
  icl_pdu_get_data(response, 0, data, datasize);
 }

 request = icl_pdu_new(response->ip_conn, M_NOWAIT);
 if (request == ((void*)0)) {
  ISCSI_SESSION_WARN(is, "failed to allocate memory; "
      "reconnecting");
  free(data, M_ISCSI);
  icl_pdu_free(response);
  iscsi_session_reconnect(is);
  return;
 }
 bhsno = (struct iscsi_bhs_nop_out *)request->ip_bhs;
 bhsno->bhsno_opcode = ISCSI_BHS_OPCODE_NOP_OUT |
     ISCSI_BHS_OPCODE_IMMEDIATE;
 bhsno->bhsno_flags = 0x80;
 bhsno->bhsno_initiator_task_tag = 0xffffffff;
 bhsno->bhsno_target_transfer_tag = bhsni->bhsni_target_transfer_tag;
 if (datasize > 0) {
  error = icl_pdu_append_data(request, data, datasize, M_NOWAIT);
  if (error != 0) {
   ISCSI_SESSION_WARN(is, "failed to allocate memory; "
       "reconnecting");
   free(data, M_ISCSI);
   icl_pdu_free(request);
   icl_pdu_free(response);
   iscsi_session_reconnect(is);
   return;
  }
  free(data, M_ISCSI);
 }

 icl_pdu_free(response);
 iscsi_pdu_queue_locked(request);
}
