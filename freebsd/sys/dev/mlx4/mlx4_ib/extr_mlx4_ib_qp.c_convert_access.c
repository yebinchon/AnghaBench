
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int MLX4_WQE_FMR_AND_BIND_PERM_ATOMIC ;
 int MLX4_WQE_FMR_AND_BIND_PERM_REMOTE_READ ;
 int MLX4_WQE_FMR_AND_BIND_PERM_REMOTE_WRITE ;
 int MLX4_WQE_FMR_PERM_LOCAL_READ ;
 int MLX4_WQE_FMR_PERM_LOCAL_WRITE ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static __be32 convert_access(int acc)
{
 return (acc & IB_ACCESS_REMOTE_ATOMIC ?
  cpu_to_be32(MLX4_WQE_FMR_AND_BIND_PERM_ATOMIC) : 0) |
        (acc & IB_ACCESS_REMOTE_WRITE ?
  cpu_to_be32(MLX4_WQE_FMR_AND_BIND_PERM_REMOTE_WRITE) : 0) |
        (acc & IB_ACCESS_REMOTE_READ ?
  cpu_to_be32(MLX4_WQE_FMR_AND_BIND_PERM_REMOTE_READ) : 0) |
        (acc & IB_ACCESS_LOCAL_WRITE ? cpu_to_be32(MLX4_WQE_FMR_PERM_LOCAL_WRITE) : 0) |
  cpu_to_be32(MLX4_WQE_FMR_PERM_LOCAL_READ);
}
