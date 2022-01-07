
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef void* uint32_t ;
typedef int uint16_t ;
struct mlx5_ib_qp {int dummy; } ;
struct mlx5_cqe64 {int byte_cnt; } ;
typedef int __be64 ;
typedef int __be32 ;


 void* be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int is_atomic_response (struct mlx5_ib_qp*,int ) ;
 void* mlx5_get_atomic_laddr (struct mlx5_ib_qp*,int ) ;

__attribute__((used)) static void handle_atomic(struct mlx5_ib_qp *qp, struct mlx5_cqe64 *cqe64,
     uint16_t idx)
{
 void *addr;
 int byte_count;
 int i;

 if (!is_atomic_response(qp, idx))
  return;

 byte_count = be32_to_cpu(cqe64->byte_cnt);
 addr = mlx5_get_atomic_laddr(qp, idx);

 if (byte_count == 4) {
  *(uint32_t *)addr = be32_to_cpu(*((__be32 *)addr));
 } else {
  for (i = 0; i < byte_count; i += 8) {
   *(uint64_t *)addr = be64_to_cpu(*((__be64 *)addr));
   addr += 8;
  }
 }

 return;
}
