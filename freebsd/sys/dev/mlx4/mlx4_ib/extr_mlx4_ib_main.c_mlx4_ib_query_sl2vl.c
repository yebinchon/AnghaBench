
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


union sl2vl_tbl_to_u64 {int sl64; int * sl8; } ;
typedef int u8 ;
typedef int u64 ;
struct ib_smp {int * data; scalar_t__ attr_mod; int attr_id; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_SMP_ATTR_SL_TO_VL_TABLE ;
 int MLX4_MAD_IFC_IGNORE_KEYS ;
 int MLX4_MAD_IFC_NET_VIEW ;
 int init_query_mad (struct ib_smp*) ;
 int kfree (struct ib_smp*) ;
 struct ib_smp* kmalloc (int,int ) ;
 struct ib_smp* kzalloc (int,int ) ;
 int mlx4_MAD_IFC (TYPE_1__*,int,int ,int *,int *,struct ib_smp*,struct ib_smp*) ;
 scalar_t__ mlx4_is_mfunc (int ) ;
 scalar_t__ mlx4_is_slave (int ) ;
 TYPE_1__* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx4_ib_query_sl2vl(struct ib_device *ibdev, u8 port, u64 *sl2vl_tbl)
{
 union sl2vl_tbl_to_u64 sl2vl64;
 struct ib_smp *in_mad = ((void*)0);
 struct ib_smp *out_mad = ((void*)0);
 int mad_ifc_flags = MLX4_MAD_IFC_IGNORE_KEYS;
 int err = -ENOMEM;
 int jj;

 if (mlx4_is_slave(to_mdev(ibdev)->dev)) {
  *sl2vl_tbl = 0;
  return 0;
 }

 in_mad = kzalloc(sizeof(*in_mad), GFP_KERNEL);
 out_mad = kmalloc(sizeof(*out_mad), GFP_KERNEL);
 if (!in_mad || !out_mad)
  goto out;

 init_query_mad(in_mad);
 in_mad->attr_id = IB_SMP_ATTR_SL_TO_VL_TABLE;
 in_mad->attr_mod = 0;

 if (mlx4_is_mfunc(to_mdev(ibdev)->dev))
  mad_ifc_flags |= MLX4_MAD_IFC_NET_VIEW;

 err = mlx4_MAD_IFC(to_mdev(ibdev), mad_ifc_flags, port, ((void*)0), ((void*)0),
      in_mad, out_mad);
 if (err)
  goto out;

 for (jj = 0; jj < 8; jj++)
  sl2vl64.sl8[jj] = ((struct ib_smp *)out_mad)->data[jj];
 *sl2vl_tbl = sl2vl64.sl64;

out:
 kfree(in_mad);
 kfree(out_mad);
 return err;
}
