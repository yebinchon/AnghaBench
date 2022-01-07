
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_ucm_conn_param {int qp_num; int srq; int rnr_retry_count; int retry_count; int flow_control; int initiator_depth; int responder_resources; scalar_t__ private_data_len; int private_data; } ;
struct rdma_conn_param {int qp_num; int srq; int rnr_retry_count; int retry_count; int flow_control; int initiator_depth; int responder_resources; scalar_t__ private_data_len; int private_data; } ;


 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static void ucma_copy_conn_event(struct rdma_ucm_conn_param *dst,
     struct rdma_conn_param *src)
{
 if (src->private_data_len)
  memcpy(dst->private_data, src->private_data,
         src->private_data_len);
 dst->private_data_len = src->private_data_len;
 dst->responder_resources =src->responder_resources;
 dst->initiator_depth = src->initiator_depth;
 dst->flow_control = src->flow_control;
 dst->retry_count = src->retry_count;
 dst->rnr_retry_count = src->rnr_retry_count;
 dst->srq = src->srq;
 dst->qp_num = src->qp_num;
}
