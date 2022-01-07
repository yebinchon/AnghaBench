
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ib_mad_send_buf {scalar_t__ mad; } ;
struct TYPE_3__ {scalar_t__ mad; } ;
struct ib_mad_recv_wc {TYPE_1__ recv_buf; } ;
struct TYPE_4__ {int tid; } ;
struct cm_rej_msg {int ari; int reason; int remote_comm_id; int local_comm_id; TYPE_2__ hdr; } ;
struct cm_port {int dummy; } ;
typedef enum ib_cm_rej_reason { ____Placeholder_ib_cm_rej_reason } ib_cm_rej_reason ;
typedef enum cm_msg_response { ____Placeholder_cm_msg_response } cm_msg_response ;


 int CM_REJ_ATTR_ID ;
 int cm_alloc_response_msg (struct cm_port*,struct ib_mad_recv_wc*,struct ib_mad_send_buf**) ;
 int cm_format_mad_hdr (TYPE_2__*,int ,int ) ;
 int cm_free_msg (struct ib_mad_send_buf*) ;
 int cm_rej_set_msg_rejected (struct cm_rej_msg*,int) ;
 int cm_rej_set_reject_info_len (struct cm_rej_msg*,int ) ;
 int cpu_to_be16 (int) ;
 int ib_post_send_mad (struct ib_mad_send_buf*,int *) ;
 int memcpy (int ,void*,int ) ;

__attribute__((used)) static int cm_issue_rej(struct cm_port *port,
   struct ib_mad_recv_wc *mad_recv_wc,
   enum ib_cm_rej_reason reason,
   enum cm_msg_response msg_rejected,
   void *ari, u8 ari_length)
{
 struct ib_mad_send_buf *msg = ((void*)0);
 struct cm_rej_msg *rej_msg, *rcv_msg;
 int ret;

 ret = cm_alloc_response_msg(port, mad_recv_wc, &msg);
 if (ret)
  return ret;


 rcv_msg = (struct cm_rej_msg *) mad_recv_wc->recv_buf.mad;
 rej_msg = (struct cm_rej_msg *) msg->mad;

 cm_format_mad_hdr(&rej_msg->hdr, CM_REJ_ATTR_ID, rcv_msg->hdr.tid);
 rej_msg->remote_comm_id = rcv_msg->local_comm_id;
 rej_msg->local_comm_id = rcv_msg->remote_comm_id;
 cm_rej_set_msg_rejected(rej_msg, msg_rejected);
 rej_msg->reason = cpu_to_be16(reason);

 if (ari && ari_length) {
  cm_rej_set_reject_info_len(rej_msg, ari_length);
  memcpy(rej_msg->ari, ari, ari_length);
 }

 ret = ib_post_send_mad(msg, ((void*)0));
 if (ret)
  cm_free_msg(msg);

 return ret;
}
