
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int MLX5_QP_BIT_RAE ;
 int MLX5_QP_BIT_RRE ;
 int MLX5_QP_BIT_RWE ;

__attribute__((used)) static int to_ib_qp_access_flags(int mlx5_flags)
{
 int ib_flags = 0;

 if (mlx5_flags & MLX5_QP_BIT_RRE)
  ib_flags |= IB_ACCESS_REMOTE_READ;
 if (mlx5_flags & MLX5_QP_BIT_RWE)
  ib_flags |= IB_ACCESS_REMOTE_WRITE;
 if (mlx5_flags & MLX5_QP_BIT_RAE)
  ib_flags |= IB_ACCESS_REMOTE_ATOMIC;

 return ib_flags;
}
