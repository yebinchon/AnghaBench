
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int atomic_rd_en; int resp_depth; } ;
struct mlx5_ib_qp {TYPE_1__ trans_qp; } ;
struct ib_qp_attr {int qp_access_flags; int max_dest_rd_atomic; } ;
typedef int __be32 ;


 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_QP_ACCESS_FLAGS ;
 int IB_QP_MAX_DEST_RD_ATOMIC ;
 int MLX5_ATOMIC_MODE_CX ;
 int MLX5_QP_BIT_RAE ;
 int MLX5_QP_BIT_RRE ;
 int MLX5_QP_BIT_RWE ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static __be32 to_mlx5_access_flags(struct mlx5_ib_qp *qp, const struct ib_qp_attr *attr,
       int attr_mask)
{
 u32 hw_access_flags = 0;
 u8 dest_rd_atomic;
 u32 access_flags;

 if (attr_mask & IB_QP_MAX_DEST_RD_ATOMIC)
  dest_rd_atomic = attr->max_dest_rd_atomic;
 else
  dest_rd_atomic = qp->trans_qp.resp_depth;

 if (attr_mask & IB_QP_ACCESS_FLAGS)
  access_flags = attr->qp_access_flags;
 else
  access_flags = qp->trans_qp.atomic_rd_en;

 if (!dest_rd_atomic)
  access_flags &= IB_ACCESS_REMOTE_WRITE;

 if (access_flags & IB_ACCESS_REMOTE_READ)
  hw_access_flags |= MLX5_QP_BIT_RRE;
 if (access_flags & IB_ACCESS_REMOTE_ATOMIC)
  hw_access_flags |= (MLX5_QP_BIT_RAE | MLX5_ATOMIC_MODE_CX);
 if (access_flags & IB_ACCESS_REMOTE_WRITE)
  hw_access_flags |= MLX5_QP_BIT_RWE;

 return cpu_to_be32(hw_access_flags);
}
