
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_conn_param {int retry_count; int rnr_retry_count; int initiator_depth; int flags; int private_data_len; void* private_data; int responder_resources; } ;
struct rdma_cm_id {struct iser_conn* context; } ;
struct TYPE_2__ {int max_qp_rd_atom; } ;
struct iser_device {TYPE_1__ dev_attr; } ;
struct ib_conn {struct iser_device* device; } ;
struct iser_conn {struct ib_conn ib_conn; } ;
struct iser_cm_hdr {int retry_count; int rnr_retry_count; int initiator_depth; int flags; int private_data_len; void* private_data; int responder_resources; } ;
typedef int req_hdr ;


 int ISER_ERR (char*,struct iser_conn*,int) ;
 int ISER_SEND_W_INV_NOT_SUPPORTED ;
 int ISER_ZBVA_NOT_SUPPORTED ;
 int iser_connect_error (struct rdma_cm_id*) ;
 int iser_create_ib_conn_res (struct ib_conn*) ;
 int memset (struct rdma_conn_param*,int ,int) ;
 int rdma_connect (struct rdma_cm_id*,struct rdma_conn_param*) ;

__attribute__((used)) static void
iser_route_handler(struct rdma_cm_id *cma_id)
{
 struct rdma_conn_param conn_param;
 int ret;
 struct iser_cm_hdr req_hdr;
 struct iser_conn *iser_conn = cma_id->context;
 struct ib_conn *ib_conn = &iser_conn->ib_conn;
 struct iser_device *device = ib_conn->device;

 ret = iser_create_ib_conn_res(ib_conn);
 if (ret)
  goto failure;

 memset(&conn_param, 0, sizeof conn_param);
 conn_param.responder_resources = device->dev_attr.max_qp_rd_atom;
 conn_param.retry_count = 7;
 conn_param.rnr_retry_count = 6;




 conn_param.initiator_depth = 1;

 memset(&req_hdr, 0, sizeof(req_hdr));
 req_hdr.flags = (ISER_ZBVA_NOT_SUPPORTED |
   ISER_SEND_W_INV_NOT_SUPPORTED);
 conn_param.private_data = (void *)&req_hdr;
 conn_param.private_data_len = sizeof(struct iser_cm_hdr);

 ret = rdma_connect(cma_id, &conn_param);
 if (ret) {
  ISER_ERR("conn %p failure connecting: %d", iser_conn, ret);
  goto failure;
 }

 return;
failure:
 iser_connect_error(cma_id);
}
