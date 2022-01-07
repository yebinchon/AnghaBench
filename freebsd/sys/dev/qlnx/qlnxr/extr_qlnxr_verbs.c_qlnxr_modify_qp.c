
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct qlnxr_qp {scalar_t__ state; scalar_t__ qp_type; int ecore_qp; int dest_qp_num; int sq_psn; int rq_psn; void* mtu; int sgid_idx; int qkey; int qp_id; TYPE_5__* dev; } ;
struct qlnxr_dev {int rdma_ctx; TYPE_6__* ha; } ;
struct ib_udata {int dummy; } ;
struct TYPE_9__ {int sgid_index; int hop_limit; int flow_label; int traffic_class; } ;
struct TYPE_15__ {TYPE_1__ grh; } ;
struct ib_qp_attr {int qp_state; scalar_t__ pkey_index; int qp_access_flags; int timeout; int dest_qp_num; int max_dest_rd_atomic; int sq_psn; int min_rnr_timer; int max_rd_atomic; int rq_psn; int rnr_retry; int retry_cnt; TYPE_7__ ah_attr; int path_mtu; int qkey; } ;
struct ib_qp {int qp_type; } ;
struct TYPE_11__ {int * dwords; } ;
struct TYPE_10__ {int * dwords; } ;
struct ecore_rdma_modify_qp_in_params {scalar_t__ new_state; int sqd_async; int incoming_rdma_read_en; int incoming_rdma_write_en; int incoming_atomic_en; int use_local_mac; int ack_timeout; int dest_qp; int modify_flags; int max_rd_atomic_resp; int sq_psn; int min_rnr_nak_timer; int max_rd_atomic_req; int rq_psn; int rnr_retry_cnt; int retry_cnt; void* mtu; int * remote_mac_addr; TYPE_3__ sgid; TYPE_2__ dgid; int local_mac_addr; int hop_limit_ttl; int flow_label; int traffic_class_tos; int pkey; int member_0; } ;
struct ecore_rdma_device {int max_qp_resp_rd_atomic_resc; int max_qp_req_rd_atomic_resc; } ;
struct TYPE_14__ {TYPE_4__* ifp; int primary_mac; } ;
typedef TYPE_6__ qlnx_host_t ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
struct TYPE_13__ {int ibdev; } ;
struct TYPE_12__ {int if_mtu; } ;


 int ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_REQ ;
 int ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP ;
 int ECORE_RDMA_MODIFY_QP_VALID_NEW_STATE ;
 int ECORE_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN ;
 int ECORE_ROCE_MODIFY_QP_VALID_ACK_TIMEOUT ;
 int ECORE_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR ;
 int ECORE_ROCE_MODIFY_QP_VALID_DEST_QP ;
 int ECORE_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER ;
 int ECORE_ROCE_MODIFY_QP_VALID_PKEY ;
 int ECORE_ROCE_MODIFY_QP_VALID_RETRY_CNT ;
 int ECORE_ROCE_MODIFY_QP_VALID_RNR_RETRY_CNT ;
 int ECORE_ROCE_MODIFY_QP_VALID_RQ_PSN ;
 int ECORE_ROCE_MODIFY_QP_VALID_SQ_PSN ;
 scalar_t__ ECORE_ROCE_QP_STATE_ERR ;
 int EINVAL ;
 int ETH_ALEN ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_LINK_LAYER_ETHERNET ;
 int IB_MTU_256 ;
 int IB_MTU_4096 ;
 scalar_t__ IB_QPT_GSI ;
 int IB_QP_ACCESS_FLAGS ;
 int IB_QP_AV ;
 int IB_QP_DEST_QPN ;
 int IB_QP_EN_SQD_ASYNC_NOTIFY ;
 int IB_QP_MAX_DEST_RD_ATOMIC ;
 int IB_QP_MAX_QP_RD_ATOMIC ;
 int IB_QP_MIN_RNR_TIMER ;
 int IB_QP_PATH_MTU ;
 int IB_QP_PKEY_INDEX ;
 int IB_QP_QKEY ;
 int IB_QP_RETRY_CNT ;
 int IB_QP_RNR_RETRY ;
 int IB_QP_RQ_PSN ;
 int IB_QP_SQ_PSN ;
 int IB_QP_STATE ;
 int IB_QP_TIMEOUT ;
 int QLNXR_ROCE_PKEY_DEFAULT ;
 scalar_t__ QLNXR_ROCE_PKEY_TABLE_LEN ;
 scalar_t__ QLNX_IS_ROCE (struct qlnxr_dev*) ;
 int QL_DPRINT12 (TYPE_6__*,char*,...) ;
 int SET_FIELD (int ,int ,int) ;
 int ecore_rdma_modify_qp (int ,int ,struct ecore_rdma_modify_qp_in_params*) ;
 struct ecore_rdma_device* ecore_rdma_query_device (int ) ;
 int get_gid_info (struct ib_qp*,struct ib_qp_attr*,int,struct qlnxr_dev*,struct qlnxr_qp*,struct ecore_rdma_modify_qp_in_params*) ;
 struct qlnxr_dev* get_qlnxr_dev (int *) ;
 struct qlnxr_qp* get_qlnxr_qp (struct ib_qp*) ;
 int ib_modify_qp_is_ok (int,int,int ,int,...) ;
 void* ib_mtu_enum_to_int (int ) ;
 int iboe_get_mtu (int ) ;
 int memcpy (int ,int ,int ) ;
 void* min (void*,void*) ;
 int qlnxr_get_dmac (struct qlnxr_dev*,TYPE_7__*,int *) ;
 int qlnxr_get_ibqp_state (scalar_t__) ;
 scalar_t__ qlnxr_get_state_from_ibqp (int) ;
 int qlnxr_update_qp_state (struct qlnxr_dev*,struct qlnxr_qp*,scalar_t__) ;

int
qlnxr_modify_qp(struct ib_qp *ibqp,
 struct ib_qp_attr *attr,
 int attr_mask,
 struct ib_udata *udata)
{
 int rc = 0;
 struct qlnxr_qp *qp = get_qlnxr_qp(ibqp);
 struct qlnxr_dev *dev = get_qlnxr_dev(&qp->dev->ibdev);
 struct ecore_rdma_modify_qp_in_params qp_params = { 0 };
 enum ib_qp_state old_qp_state, new_qp_state;
 struct ecore_rdma_device *qattr = ecore_rdma_query_device(dev->rdma_ctx);
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha,
  "enter qp = %p attr_mask = 0x%x, state = %d udata = %p\n",
  qp, attr_mask, attr->qp_state, udata);

 old_qp_state = qlnxr_get_ibqp_state(qp->state);
 if (attr_mask & IB_QP_STATE)
  new_qp_state = attr->qp_state;
 else
  new_qp_state = old_qp_state;

 if (QLNX_IS_ROCE(dev)) {
  if (!ib_modify_qp_is_ok(old_qp_state,
     new_qp_state,
     ibqp->qp_type,
     attr_mask )) {
   QL_DPRINT12(ha,
    "invalid attribute mask=0x%x"
    " specified for qpn=0x%x of type=0x%x \n"
    " old_qp_state=0x%x, new_qp_state=0x%x\n",
    attr_mask, qp->qp_id, ibqp->qp_type,
    old_qp_state, new_qp_state);
   rc = -EINVAL;
   goto err;
  }


 }

 if (attr_mask & IB_QP_STATE) {
  SET_FIELD(qp_params.modify_flags,
     ECORE_RDMA_MODIFY_QP_VALID_NEW_STATE, 1);
  qp_params.new_state = qlnxr_get_state_from_ibqp(attr->qp_state);
 }


 if (attr_mask & IB_QP_EN_SQD_ASYNC_NOTIFY)
  qp_params.sqd_async = 1;

 if (attr_mask & IB_QP_PKEY_INDEX) {
  SET_FIELD(qp_params.modify_flags,
     ECORE_ROCE_MODIFY_QP_VALID_PKEY,
     1);
  if (attr->pkey_index >= QLNXR_ROCE_PKEY_TABLE_LEN) {
   rc = -EINVAL;
   goto err;
  }

  qp_params.pkey = QLNXR_ROCE_PKEY_DEFAULT;
 }

 if (attr_mask & IB_QP_QKEY) {
  qp->qkey = attr->qkey;
 }


 if (attr_mask & IB_QP_ACCESS_FLAGS) {
  SET_FIELD(qp_params.modify_flags,
     ECORE_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN, 1);
  qp_params.incoming_rdma_read_en =
   attr->qp_access_flags & IB_ACCESS_REMOTE_READ;
  qp_params.incoming_rdma_write_en =
   attr->qp_access_flags & IB_ACCESS_REMOTE_WRITE;
  qp_params.incoming_atomic_en =
   attr->qp_access_flags & IB_ACCESS_REMOTE_ATOMIC;
 }

 if (attr_mask & (IB_QP_AV | IB_QP_PATH_MTU)) {
  if (attr_mask & IB_QP_PATH_MTU) {
   if (attr->path_mtu < IB_MTU_256 ||
       attr->path_mtu > IB_MTU_4096) {

    QL_DPRINT12(ha,
     "Only MTU sizes of 256, 512, 1024,"
     " 2048 and 4096 are supported "
     " attr->path_mtu = [%d]\n",
     attr->path_mtu);

    rc = -EINVAL;
    goto err;
   }
   qp->mtu = min(ib_mtu_enum_to_int(attr->path_mtu),
          ib_mtu_enum_to_int(
      iboe_get_mtu(dev->ha->ifp->if_mtu)));
  }

  if (qp->mtu == 0) {
   qp->mtu = ib_mtu_enum_to_int(
     iboe_get_mtu(dev->ha->ifp->if_mtu));
   QL_DPRINT12(ha, "fixing zetoed MTU to qp->mtu = %d\n",
    qp->mtu);
  }

  SET_FIELD(qp_params.modify_flags,
     ECORE_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR,
     1);

  qp_params.traffic_class_tos = attr->ah_attr.grh.traffic_class;
  qp_params.flow_label = attr->ah_attr.grh.flow_label;
  qp_params.hop_limit_ttl = attr->ah_attr.grh.hop_limit;

  qp->sgid_idx = attr->ah_attr.grh.sgid_index;

  get_gid_info(ibqp, attr, attr_mask, dev, qp, &qp_params);

  rc = qlnxr_get_dmac(dev, &attr->ah_attr, qp_params.remote_mac_addr);
  if (rc)
   return rc;

  qp_params.use_local_mac = 1;
  memcpy(qp_params.local_mac_addr, dev->ha->primary_mac, ETH_ALEN);

  QL_DPRINT12(ha, "dgid=0x%x:0x%x:0x%x:0x%x\n",
         qp_params.dgid.dwords[0], qp_params.dgid.dwords[1],
         qp_params.dgid.dwords[2], qp_params.dgid.dwords[3]);
  QL_DPRINT12(ha, "sgid=0x%x:0x%x:0x%x:0x%x\n",
         qp_params.sgid.dwords[0], qp_params.sgid.dwords[1],
         qp_params.sgid.dwords[2], qp_params.sgid.dwords[3]);
  QL_DPRINT12(ha,
   "remote_mac=[0x%x:0x%x:0x%x:0x%x:0x%x:0x%x]\n",
   qp_params.remote_mac_addr[0],
   qp_params.remote_mac_addr[1],
   qp_params.remote_mac_addr[2],
   qp_params.remote_mac_addr[3],
   qp_params.remote_mac_addr[4],
   qp_params.remote_mac_addr[5]);

  qp_params.mtu = qp->mtu;
 }

 if (qp_params.mtu == 0) {

  if (qp->mtu) {
   qp_params.mtu = qp->mtu;
  } else {
   qp_params.mtu = ib_mtu_enum_to_int(
      iboe_get_mtu(dev->ha->ifp->if_mtu));
  }
 }

 if (attr_mask & IB_QP_TIMEOUT) {
  SET_FIELD(qp_params.modify_flags, ECORE_ROCE_MODIFY_QP_VALID_ACK_TIMEOUT, 1);


  qp_params.ack_timeout = attr->timeout;
  if (attr->timeout) {
   u32 temp;
   temp = 4096 * (1UL << attr->timeout) / 1000 / 1000;
   qp_params.ack_timeout = temp;
  }
  else
   qp_params.ack_timeout = 0;
 }
 if (attr_mask & IB_QP_RETRY_CNT) {
  SET_FIELD(qp_params.modify_flags, ECORE_ROCE_MODIFY_QP_VALID_RETRY_CNT, 1);

  qp_params.retry_cnt = attr->retry_cnt;
 }

 if (attr_mask & IB_QP_RNR_RETRY) {
  SET_FIELD(qp_params.modify_flags,
     ECORE_ROCE_MODIFY_QP_VALID_RNR_RETRY_CNT,
     1);
  qp_params.rnr_retry_cnt = attr->rnr_retry;
 }

 if (attr_mask & IB_QP_RQ_PSN) {
  SET_FIELD(qp_params.modify_flags,
     ECORE_ROCE_MODIFY_QP_VALID_RQ_PSN,
     1);
  qp_params.rq_psn = attr->rq_psn;
  qp->rq_psn = attr->rq_psn;
 }

 if (attr_mask & IB_QP_MAX_QP_RD_ATOMIC) {
  if (attr->max_rd_atomic > qattr->max_qp_req_rd_atomic_resc) {
   rc = -EINVAL;
   QL_DPRINT12(ha,
    "unsupported  max_rd_atomic=%d, supported=%d\n",
    attr->max_rd_atomic,
    qattr->max_qp_req_rd_atomic_resc);
   goto err;
  }

  SET_FIELD(qp_params.modify_flags,
     ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_REQ,
     1);
  qp_params.max_rd_atomic_req = attr->max_rd_atomic;
 }

 if (attr_mask & IB_QP_MIN_RNR_TIMER) {
  SET_FIELD(qp_params.modify_flags,
     ECORE_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER,
     1);
  qp_params.min_rnr_nak_timer = attr->min_rnr_timer;
 }

 if (attr_mask & IB_QP_SQ_PSN) {
  SET_FIELD(qp_params.modify_flags,
     ECORE_ROCE_MODIFY_QP_VALID_SQ_PSN,
     1);
  qp_params.sq_psn = attr->sq_psn;
  qp->sq_psn = attr->sq_psn;
 }

 if (attr_mask & IB_QP_MAX_DEST_RD_ATOMIC) {
  if (attr->max_dest_rd_atomic >
      qattr->max_qp_resp_rd_atomic_resc) {
   QL_DPRINT12(ha,
    "unsupported max_dest_rd_atomic=%d, "
    "supported=%d\n",
    attr->max_dest_rd_atomic,
    qattr->max_qp_resp_rd_atomic_resc);

   rc = -EINVAL;
   goto err;
  }

  SET_FIELD(qp_params.modify_flags,
     ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP,
     1);
  qp_params.max_rd_atomic_resp = attr->max_dest_rd_atomic;
 }

  if (attr_mask & IB_QP_DEST_QPN) {
  SET_FIELD(qp_params.modify_flags,
     ECORE_ROCE_MODIFY_QP_VALID_DEST_QP,
     1);

  qp_params.dest_qp = attr->dest_qp_num;
  qp->dest_qp_num = attr->dest_qp_num;
 }







 if ((attr_mask & IB_QP_STATE) && (qp->qp_type != IB_QPT_GSI) &&
  (!udata) && (qp_params.new_state == ECORE_ROCE_QP_STATE_ERR))
  qp->state = ECORE_ROCE_QP_STATE_ERR;

 if (qp->qp_type != IB_QPT_GSI)
  rc = ecore_rdma_modify_qp(dev->rdma_ctx, qp->ecore_qp, &qp_params);

 if (attr_mask & IB_QP_STATE) {
  if ((qp->qp_type != IB_QPT_GSI) && (!udata))
   rc = qlnxr_update_qp_state(dev, qp, qp_params.new_state);
  qp->state = qp_params.new_state;
 }

err:
 QL_DPRINT12(ha, "exit\n");
 return rc;
}
