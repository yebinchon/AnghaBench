
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_qp_context {int srqn; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static u32 qp_get_srqn(struct mlx4_qp_context *qpc)
{
 return be32_to_cpu(qpc->srqn) & 0x1ffffff;
}
