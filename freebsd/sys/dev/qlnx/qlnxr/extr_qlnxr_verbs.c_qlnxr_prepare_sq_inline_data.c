
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct rdma_sq_common_wqe {int dummy; } ;
struct TYPE_3__ {int pbl; } ;
struct qlnxr_qp {TYPE_1__ sq; } ;
struct qlnxr_dev {int * ha; } ;
struct ib_send_wr {int num_sge; TYPE_2__* sg_list; } ;
typedef int qlnx_host_t ;
struct TYPE_4__ {scalar_t__ length; scalar_t__ addr; } ;


 scalar_t__ MIN (scalar_t__,int) ;
 int QL_DPRINT12 (int *,char*,...) ;
 scalar_t__ ROCE_REQ_MAX_INLINE_DATA_SIZE ;
 scalar_t__ ecore_chain_produce (int *) ;
 int memcpy (char*,void*,scalar_t__) ;
 scalar_t__ sge_data_len (TYPE_2__*,int) ;
 int swap_wqe_data64 (int *) ;

__attribute__((used)) static u32
qlnxr_prepare_sq_inline_data(struct qlnxr_dev *dev,
 struct qlnxr_qp *qp,
 u8 *wqe_size,
 struct ib_send_wr *wr,
 struct ib_send_wr **bad_wr,
 u8 *bits,
 u8 bit)
{
 int i, seg_siz;
 char *seg_prt, *wqe;
 u32 data_size = sge_data_len(wr->sg_list, wr->num_sge);
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter[%d]\n", data_size);

 if (data_size > ROCE_REQ_MAX_INLINE_DATA_SIZE) {
  QL_DPRINT12(ha,
   "Too much inline data in WR:[%d, %d]\n",
   data_size, ROCE_REQ_MAX_INLINE_DATA_SIZE);
  *bad_wr = wr;
  return 0;
 }

 if (!data_size)
  return data_size;


 *bits |= bit;

 seg_prt = wqe = ((void*)0);
 seg_siz = 0;


 for (i = 0; i < wr->num_sge; i++) {
  u32 len = wr->sg_list[i].length;
  void *src = (void *)(uintptr_t)wr->sg_list[i].addr;

  while (len > 0) {
   u32 cur;


   if (!seg_siz) {
    wqe = (char *)ecore_chain_produce(&qp->sq.pbl);
    seg_prt = wqe;
    seg_siz = sizeof(struct rdma_sq_common_wqe);
    (*wqe_size)++;
   }


   cur = MIN(len, seg_siz);

   memcpy(seg_prt, src, cur);


   seg_prt += cur;
   seg_siz -= cur;

   src += cur;
   len -= cur;


   if (!seg_siz)
    swap_wqe_data64((u64 *)wqe);
  }
 }


 if (seg_siz)
  swap_wqe_data64((u64 *)wqe);

 QL_DPRINT12(ha, "exit\n");
 return data_size;
}
