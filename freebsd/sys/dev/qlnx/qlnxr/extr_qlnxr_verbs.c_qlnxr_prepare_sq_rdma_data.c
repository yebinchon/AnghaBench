
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rdma_sq_rdma_wqe_2nd {int r_key; } ;
struct rdma_sq_rdma_wqe_1st {int wqe_size; int flags; } ;
struct qlnxr_qp {int dummy; } ;
struct qlnxr_dev {int * ha; } ;
struct ib_send_wr {int send_flags; } ;
typedef int qlnx_host_t ;
struct TYPE_2__ {int remote_addr; int rkey; } ;


 int IB_SEND_INLINE ;
 int QL_DPRINT12 (int *,char*,...) ;
 int RDMA_SQ_RDMA_WQE_1ST_INLINE_FLG ;
 int SET_FIELD2 (int ,int ,int) ;
 int TYPEPTR_ADDR_SET (struct rdma_sq_rdma_wqe_2nd*,int ,int ) ;
 int cpu_to_le32 (int ) ;
 int qlnxr_prepare_sq_inline_data (struct qlnxr_dev*,struct qlnxr_qp*,int *,struct ib_send_wr*,struct ib_send_wr**,int *,int ) ;
 int qlnxr_prepare_sq_sges (struct qlnxr_dev*,struct qlnxr_qp*,int *,struct ib_send_wr*) ;
 TYPE_1__* rdma_wr (struct ib_send_wr*) ;
 int remote_va ;

__attribute__((used)) static u32
qlnxr_prepare_sq_rdma_data(struct qlnxr_dev *dev,
 struct qlnxr_qp *qp,
 struct rdma_sq_rdma_wqe_1st *rwqe,
 struct rdma_sq_rdma_wqe_2nd *rwqe2,
 struct ib_send_wr *wr,
 struct ib_send_wr **bad_wr)
{
 qlnx_host_t *ha;
 u32 ret = 0;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 rwqe2->r_key = cpu_to_le32(rdma_wr(wr)->rkey);
 TYPEPTR_ADDR_SET(rwqe2, remote_va, rdma_wr(wr)->remote_addr);

 if (wr->send_flags & IB_SEND_INLINE) {
  u8 flags = 0;
  SET_FIELD2(flags, RDMA_SQ_RDMA_WQE_1ST_INLINE_FLG, 1);
  return qlnxr_prepare_sq_inline_data(dev, qp, &rwqe->wqe_size,
    wr, bad_wr, &rwqe->flags, flags);
 }

 ret = qlnxr_prepare_sq_sges(dev, qp, &rwqe->wqe_size, wr);

 QL_DPRINT12(ha, "exit ret = 0x%x\n", ret);

 return (ret);
}
