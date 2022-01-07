
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_rdma_query_qp_out_params {scalar_t__ incoming_atomic_en; scalar_t__ incoming_rdma_read_en; scalar_t__ incoming_rdma_write_en; } ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;

__attribute__((used)) static int
qlnxr_to_ib_qp_acc_flags(struct ecore_rdma_query_qp_out_params *params)
{
 int ib_qp_acc_flags = 0;

 if (params->incoming_rdma_write_en)
  ib_qp_acc_flags |= IB_ACCESS_REMOTE_WRITE;
 if (params->incoming_rdma_read_en)
  ib_qp_acc_flags |= IB_ACCESS_REMOTE_READ;
 if (params->incoming_atomic_en)
  ib_qp_acc_flags |= IB_ACCESS_REMOTE_ATOMIC;
 if (1)
  ib_qp_acc_flags |= IB_ACCESS_LOCAL_WRITE;

 return ib_qp_acc_flags;
}
