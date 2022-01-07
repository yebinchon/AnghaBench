
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlx5_ib_gsi_qp {scalar_t__ num_qps; } ;


 int setup_qp (struct mlx5_ib_gsi_qp*,scalar_t__) ;

__attribute__((used)) static void setup_qps(struct mlx5_ib_gsi_qp *gsi)
{
 u16 qp_index;

 for (qp_index = 0; qp_index < gsi->num_qps; ++qp_index)
  setup_qp(gsi, qp_index);
}
