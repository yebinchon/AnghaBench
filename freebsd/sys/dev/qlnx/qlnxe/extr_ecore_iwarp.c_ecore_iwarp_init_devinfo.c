
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_rdma_device {int max_qp_req_rd_atomic_resc; int max_qp_resp_rd_atomic_resc; scalar_t__ max_qp; scalar_t__ max_cq; int max_inline; } ;
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int num_qps; struct ecore_rdma_device* dev; } ;


 int ECORE_IWARP_IRD_DEFAULT ;
 int ECORE_IWARP_ORD_DEFAULT ;
 scalar_t__ ECORE_IWARP_PREALLOC_CNT ;
 int IWARP_MAX_QPS ;
 int IWARP_REQ_MAX_INLINE_DATA_SIZE ;
 scalar_t__ OSAL_MIN_T (int ,int ,int ) ;
 int u64 ;

void
ecore_iwarp_init_devinfo(struct ecore_hwfn *p_hwfn)
{
 struct ecore_rdma_device *dev = p_hwfn->p_rdma_info->dev;

 dev->max_inline = IWARP_REQ_MAX_INLINE_DATA_SIZE;
 dev->max_qp = OSAL_MIN_T(u64,
     IWARP_MAX_QPS,
     p_hwfn->p_rdma_info->num_qps) -
  ECORE_IWARP_PREALLOC_CNT;

 dev->max_cq = dev->max_qp;

 dev->max_qp_resp_rd_atomic_resc = ECORE_IWARP_IRD_DEFAULT;
 dev->max_qp_req_rd_atomic_resc = ECORE_IWARP_ORD_DEFAULT;
}
