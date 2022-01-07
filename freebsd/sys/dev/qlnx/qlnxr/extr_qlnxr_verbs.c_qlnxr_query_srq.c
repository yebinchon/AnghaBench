
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_srq {struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int rdma_ctx; int * ha; } ;
struct ib_srq_attr {int max_sge; int max_wr; int srq_limit; } ;
struct ib_srq {int dummy; } ;
struct ecore_rdma_device {int max_sge; int max_srq_wr; int max_srq; } ;
typedef int qlnx_host_t ;


 int EINVAL ;
 int QL_DPRINT12 (int *,char*) ;
 struct ecore_rdma_device* ecore_rdma_query_device (int ) ;
 struct qlnxr_srq* get_qlnxr_srq (struct ib_srq*) ;

int
qlnxr_query_srq(struct ib_srq *ibsrq, struct ib_srq_attr *srq_attr)
{
 struct qlnxr_dev *dev;
 struct qlnxr_srq *srq;
 qlnx_host_t *ha;
 struct ecore_rdma_device *qattr;
 srq = get_qlnxr_srq(ibsrq);
 dev = srq->dev;
 ha = dev->ha;

 qattr = ecore_rdma_query_device(dev->rdma_ctx);
 QL_DPRINT12(ha, "enter\n");

 if (!dev->rdma_ctx) {
  QL_DPRINT12(ha, "called with invalid params"
   " rdma_ctx is NULL\n");
  return -EINVAL;
 }

 srq_attr->srq_limit = qattr->max_srq;
 srq_attr->max_wr = qattr->max_srq_wr;
 srq_attr->max_sge = qattr->max_sge;

 QL_DPRINT12(ha, "exit\n");
 return 0;
}
