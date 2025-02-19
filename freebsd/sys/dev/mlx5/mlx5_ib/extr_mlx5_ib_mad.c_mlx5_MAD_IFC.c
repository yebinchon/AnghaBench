
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_wc {int dummy; } ;
struct ib_grh {int dummy; } ;


 int mlx5_core_mad_ifc (int ,void const*,void*,int,int) ;

int mlx5_MAD_IFC(struct mlx5_ib_dev *dev, int ignore_mkey, int ignore_bkey,
   u8 port, const struct ib_wc *in_wc, const struct ib_grh *in_grh,
   const void *in_mad, void *response_mad)
{
 u8 op_modifier = 0;




 if (ignore_mkey || !in_wc)
  op_modifier |= 0x1;
 if (ignore_bkey || !in_wc)
  op_modifier |= 0x2;

 return mlx5_core_mad_ifc(dev->mdev, in_mad, response_mad, op_modifier, port);
}
