
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_recv_wr; } ;
struct ib_qp_init_attr {scalar_t__ qp_type; TYPE_1__ cap; scalar_t__ srq; } ;


 scalar_t__ IB_QPT_XRC_INI ;
 scalar_t__ IB_QPT_XRC_TGT ;
 scalar_t__ MLX5_IB_QPT_REG_UMR ;

__attribute__((used)) static int qp_has_rq(struct ib_qp_init_attr *attr)
{
 if (attr->qp_type == IB_QPT_XRC_INI ||
     attr->qp_type == IB_QPT_XRC_TGT || attr->srq ||
     attr->qp_type == MLX5_IB_QPT_REG_UMR ||
     !attr->cap.max_recv_wr)
  return 0;

 return 1;
}
