
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlnxr_srq {int srq_id; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int rdma_ctx; int * ha; } ;
struct ib_srq {TYPE_2__* pd; } ;
struct ecore_rdma_destroy_srq_in_params {int srq_id; } ;
typedef int qlnx_host_t ;
typedef int in_params ;
struct TYPE_4__ {TYPE_1__* uobject; } ;
struct TYPE_3__ {scalar_t__ context; } ;


 int QL_DPRINT12 (int *,char*,int ) ;
 int ecore_rdma_destroy_srq (int ,struct ecore_rdma_destroy_srq_in_params*) ;
 struct qlnxr_srq* get_qlnxr_srq (struct ib_srq*) ;
 int kfree (struct qlnxr_srq*) ;
 int memset (struct ecore_rdma_destroy_srq_in_params*,int ,int) ;
 int qlnxr_free_srq_kernel_params (struct qlnxr_srq*) ;
 int qlnxr_free_srq_user_params (struct qlnxr_srq*) ;

int
qlnxr_destroy_srq(struct ib_srq *ibsrq)
{
 struct qlnxr_dev *dev;
 struct qlnxr_srq *srq;
 qlnx_host_t *ha;
 struct ecore_rdma_destroy_srq_in_params in_params;

 srq = get_qlnxr_srq(ibsrq);
 dev = srq->dev;
 ha = dev->ha;

 memset(&in_params, 0, sizeof(in_params));
 in_params.srq_id = srq->srq_id;

 ecore_rdma_destroy_srq(dev->rdma_ctx, &in_params);

 if (ibsrq->pd->uobject && ibsrq->pd->uobject->context)
  qlnxr_free_srq_user_params(srq);
 else
  qlnxr_free_srq_kernel_params(srq);

 QL_DPRINT12(ha, "destroyed srq_id=0x%0x\n", srq->srq_id);
 kfree(srq);
 return 0;
}
