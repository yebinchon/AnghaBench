
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rdma_sq_sge {void* length; void* l_key; } ;
struct TYPE_3__ {int pbl; } ;
struct qlnxr_qp {TYPE_1__ sq; } ;
struct qlnxr_dev {int * ha; } ;
struct ib_send_wr {int num_sge; TYPE_2__* sg_list; } ;
typedef int qlnx_host_t ;
struct TYPE_4__ {scalar_t__ length; scalar_t__ lkey; int addr; } ;


 int QL_DPRINT12 (int *,char*,int) ;
 int TYPEPTR_ADDR_SET (struct rdma_sq_sge*,int ,int ) ;
 int addr ;
 void* cpu_to_le32 (scalar_t__) ;
 struct rdma_sq_sge* ecore_chain_produce (int *) ;

__attribute__((used)) static u32
qlnxr_prepare_sq_sges(struct qlnxr_dev *dev, struct qlnxr_qp *qp,
 u8 *wqe_size, struct ib_send_wr *wr)
{
 int i;
 u32 data_size = 0;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter wr->num_sge = %d \n", wr->num_sge);

 for (i = 0; i < wr->num_sge; i++) {
  struct rdma_sq_sge *sge = ecore_chain_produce(&qp->sq.pbl);

  TYPEPTR_ADDR_SET(sge, addr, wr->sg_list[i].addr);
  sge->l_key = cpu_to_le32(wr->sg_list[i].lkey);
  sge->length = cpu_to_le32(wr->sg_list[i].length);
  data_size += wr->sg_list[i].length;
 }

 if (wqe_size)
  *wqe_size += wr->num_sge;

 QL_DPRINT12(ha, "exit data_size = %d\n", data_size);
 return data_size;
}
