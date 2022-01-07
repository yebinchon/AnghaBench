
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucm_req_event_resp {int alternate_path; int primary_path; int port; int srq; int rnr_retry_count; int retry_count; int remote_cm_response_timeout; int flow_control; int local_cm_response_timeout; int initiator_depth; int responder_resources; int starting_psn; int qp_type; int remote_qpn; int remote_qkey; int remote_ca_guid; } ;
struct ib_cm_req_event_param {scalar_t__ alternate_path; scalar_t__ primary_path; int port; int srq; int rnr_retry_count; int retry_count; int remote_cm_response_timeout; int flow_control; int local_cm_response_timeout; int initiator_depth; int responder_resources; int starting_psn; int qp_type; int remote_qpn; int remote_qkey; int remote_ca_guid; } ;


 int ib_copy_path_rec_to_user (int *,scalar_t__) ;

__attribute__((used)) static void ib_ucm_event_req_get(struct ib_ucm_req_event_resp *ureq,
     struct ib_cm_req_event_param *kreq)
{
 ureq->remote_ca_guid = kreq->remote_ca_guid;
 ureq->remote_qkey = kreq->remote_qkey;
 ureq->remote_qpn = kreq->remote_qpn;
 ureq->qp_type = kreq->qp_type;
 ureq->starting_psn = kreq->starting_psn;
 ureq->responder_resources = kreq->responder_resources;
 ureq->initiator_depth = kreq->initiator_depth;
 ureq->local_cm_response_timeout = kreq->local_cm_response_timeout;
 ureq->flow_control = kreq->flow_control;
 ureq->remote_cm_response_timeout = kreq->remote_cm_response_timeout;
 ureq->retry_count = kreq->retry_count;
 ureq->rnr_retry_count = kreq->rnr_retry_count;
 ureq->srq = kreq->srq;
 ureq->port = kreq->port;

 ib_copy_path_rec_to_user(&ureq->primary_path, kreq->primary_path);
 if (kreq->alternate_path)
  ib_copy_path_rec_to_user(&ureq->alternate_path,
      kreq->alternate_path);
}
