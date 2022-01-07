
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iser_reg_resources {scalar_t__ mr_valid; struct ib_mr* mr; } ;
struct TYPE_4__ {int length; int addr; int lkey; } ;
struct iser_mem_reg {TYPE_2__ sge; int rkey; } ;
struct iser_device {int dummy; } ;
struct iser_data_buf {int dma_nents; int size; int sg; } ;
struct icl_iser_pdu {TYPE_1__* iser_conn; } ;
struct ib_send_wr {struct ib_send_wr* next; scalar_t__ num_sge; int wr_id; int opcode; } ;
struct ib_reg_wr {int access; struct ib_send_wr wr; int key; struct ib_mr* mr; } ;
struct ib_mr {int length; int iova; int rkey; int lkey; } ;
struct ib_conn {int qp; struct iser_device* device; } ;
typedef int fastreg_wr ;
struct TYPE_3__ {struct ib_conn ib_conn; } ;


 int EINVAL ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_WR_REG_MR ;
 int ISER_ERR (char*,int,...) ;
 int ISER_FASTREG_LI_WRID ;
 int SIZE_4K ;
 int ib_map_mr_sg (struct ib_mr*,int ,int,int *,int ) ;
 int ib_post_send (int ,struct ib_send_wr*,struct ib_send_wr**) ;
 int iser_inv_rkey (struct ib_send_wr*,struct ib_mr*) ;
 int iser_reg_dma (struct iser_device*,struct iser_data_buf*,struct iser_mem_reg*) ;
 int memset (struct ib_reg_wr*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
iser_fast_reg_mr(struct icl_iser_pdu *iser_pdu,
   struct iser_data_buf *mem,
   struct iser_reg_resources *rsc,
   struct iser_mem_reg *reg)
{
 struct ib_conn *ib_conn = &iser_pdu->iser_conn->ib_conn;
 struct iser_device *device = ib_conn->device;
 struct ib_mr *mr = rsc->mr;
 struct ib_reg_wr fastreg_wr;
 struct ib_send_wr inv_wr;
 struct ib_send_wr *bad_wr, *wr = ((void*)0);
 int ret, n;


 if (mem->dma_nents == 1)
  return iser_reg_dma(device, mem, reg);

 if (!rsc->mr_valid) {
  iser_inv_rkey(&inv_wr, mr);
  wr = &inv_wr;
 }

 n = ib_map_mr_sg(mr, mem->sg, mem->size, ((void*)0), SIZE_4K);
 if (unlikely(n != mem->size)) {
  ISER_ERR("failed to map sg (%d/%d)\n", n, mem->size);
  return n < 0 ? n : -EINVAL;
 }

 memset(&fastreg_wr, 0, sizeof(fastreg_wr));
 fastreg_wr.wr.opcode = IB_WR_REG_MR;
 fastreg_wr.wr.wr_id = ISER_FASTREG_LI_WRID;
 fastreg_wr.wr.num_sge = 0;
 fastreg_wr.mr = mr;
 fastreg_wr.key = mr->rkey;
 fastreg_wr.access = IB_ACCESS_LOCAL_WRITE |
       IB_ACCESS_REMOTE_WRITE |
       IB_ACCESS_REMOTE_READ;

 if (!wr)
  wr = &fastreg_wr.wr;
 else
  wr->next = &fastreg_wr.wr;

 ret = ib_post_send(ib_conn->qp, wr, &bad_wr);
 if (ret) {
  ISER_ERR("fast registration failed, ret:%d", ret);
  return (ret);
 }
 rsc->mr_valid = 0;

 reg->sge.lkey = mr->lkey;
 reg->rkey = mr->rkey;
 reg->sge.addr = mr->iova;
 reg->sge.length = mr->length;

 return (ret);
}
