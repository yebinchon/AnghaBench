
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u64 ;
typedef int u32 ;
struct mlx5e_port_stats_debug {void** arg; } ;
struct mlx5e_pport_stats {void** arg; } ;
struct TYPE_2__ {struct mlx5e_port_stats_debug port_stats_debug; struct mlx5e_pport_stats pport; } ;
struct mlx5e_priv {TYPE_1__ stats; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 unsigned int MLX5E_PPORT_ETHERNET_EXTENDED_STATS_DEBUG_NUM ;
 unsigned int MLX5E_PPORT_IEEE802_3_STATS_NUM ;
 unsigned int MLX5E_PPORT_PER_PRIO_STATS_NUM ;
 unsigned int MLX5E_PPORT_PER_PRIO_STATS_NUM_PRIO ;
 unsigned int MLX5E_PPORT_PHYSICAL_LAYER_STATS_DEBUG_NUM ;
 unsigned int MLX5E_PPORT_RFC2819_STATS_DEBUG_NUM ;
 unsigned int MLX5E_PPORT_RFC2819_STATS_NUM ;
 unsigned int MLX5E_PPORT_RFC2863_STATS_DEBUG_NUM ;
 unsigned int MLX5E_PPORT_STATISTICAL_DEBUG_NUM ;
 scalar_t__ MLX5_ADDR_OF (int ,int *,int ) ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_PCAM_FEATURE (struct mlx5_core_dev*,int ) ;
 unsigned int MLX5_ETHERNET_EXTENDED_COUNTERS_GROUP ;
 unsigned int MLX5_IEEE_802_3_COUNTERS_GROUP ;
 unsigned int MLX5_PER_PRIORITY_COUNTERS_GROUP ;
 unsigned int MLX5_PHYSICAL_LAYER_COUNTERS_GROUP ;
 unsigned int MLX5_PHYSICAL_LAYER_STATISTICAL_GROUP ;
 int MLX5_REG_PPCNT ;
 unsigned int MLX5_RFC_2819_COUNTERS_GROUP ;
 unsigned int MLX5_RFC_2863_COUNTERS_GROUP ;
 int MLX5_SET (int ,int *,int ,unsigned int) ;
 unsigned int MLX5_ST_SZ_BYTES (int ) ;
 void* be64toh (int const) ;
 int counter_set ;
 int grp ;
 int kvfree (int *) ;
 int local_port ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,int *,unsigned int,int *,unsigned int,int ,int ,int ) ;
 int * mlx5_vzalloc (unsigned int) ;
 int mlx5e_update_pcie_counters (struct mlx5e_priv*) ;
 int pcam_reg ;
 int per_lane_error_counters ;
 int ppcnt_reg ;
 int ppcnt_statistical_group ;
 int prio_tc ;

__attribute__((used)) static void
mlx5e_update_pport_counters(struct mlx5e_priv *priv)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 struct mlx5e_pport_stats *s = &priv->stats.pport;
 struct mlx5e_port_stats_debug *s_debug = &priv->stats.port_stats_debug;
 u32 *in;
 u32 *out;
 const u64 *ptr;
 unsigned sz = MLX5_ST_SZ_BYTES(ppcnt_reg);
 unsigned x;
 unsigned y;
 unsigned z;


 in = mlx5_vzalloc(sz);
 out = mlx5_vzalloc(sz);
 if (in == ((void*)0) || out == ((void*)0))
  goto free_out;





 ptr = (const uint64_t *)MLX5_ADDR_OF(ppcnt_reg, out, counter_set);

 MLX5_SET(ppcnt_reg, in, local_port, 1);


 MLX5_SET(ppcnt_reg, in, grp, MLX5_IEEE_802_3_COUNTERS_GROUP);
 mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0);
 for (x = 0, y = MLX5E_PPORT_PER_PRIO_STATS_NUM;
      x != MLX5E_PPORT_IEEE802_3_STATS_NUM; x++, y++)
  s->arg[y] = be64toh(ptr[x]);


 MLX5_SET(ppcnt_reg, in, grp, MLX5_RFC_2819_COUNTERS_GROUP);
 mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0);
 for (x = 0; x != MLX5E_PPORT_RFC2819_STATS_NUM; x++, y++)
  s->arg[y] = be64toh(ptr[x]);

 for (y = 0; x != MLX5E_PPORT_RFC2819_STATS_NUM +
     MLX5E_PPORT_RFC2819_STATS_DEBUG_NUM; x++, y++)
  s_debug->arg[y] = be64toh(ptr[x]);


 MLX5_SET(ppcnt_reg, in, grp, MLX5_RFC_2863_COUNTERS_GROUP);
 mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0);
 for (x = 0; x != MLX5E_PPORT_RFC2863_STATS_DEBUG_NUM; x++, y++)
  s_debug->arg[y] = be64toh(ptr[x]);


 MLX5_SET(ppcnt_reg, in, grp, MLX5_PHYSICAL_LAYER_COUNTERS_GROUP);
 mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0);
 for (x = 0; x != MLX5E_PPORT_PHYSICAL_LAYER_STATS_DEBUG_NUM; x++, y++)
  s_debug->arg[y] = be64toh(ptr[x]);


 MLX5_SET(ppcnt_reg, in, grp, MLX5_ETHERNET_EXTENDED_COUNTERS_GROUP);
 mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0);
 for (x = 0; x != MLX5E_PPORT_ETHERNET_EXTENDED_STATS_DEBUG_NUM; x++, y++)
  s_debug->arg[y] = be64toh(ptr[x]);


 if (MLX5_CAP_GEN(mdev, pcam_reg) &&
     MLX5_CAP_PCAM_FEATURE(mdev, ppcnt_statistical_group) &&
     MLX5_CAP_PCAM_FEATURE(mdev, per_lane_error_counters)) {

  MLX5_SET(ppcnt_reg, in, grp, MLX5_PHYSICAL_LAYER_STATISTICAL_GROUP);
  mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0);

  for (x = 0; x != MLX5E_PPORT_STATISTICAL_DEBUG_NUM; x++, y++)
   s_debug->arg[y] = be64toh(ptr[x]);
 }


 mlx5e_update_pcie_counters(priv);


 MLX5_SET(ppcnt_reg, in, grp, MLX5_PER_PRIORITY_COUNTERS_GROUP);


 for (y = z = 0; z != MLX5E_PPORT_PER_PRIO_STATS_NUM_PRIO; z++) {
  MLX5_SET(ppcnt_reg, in, prio_tc, z);
  mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0);


  for (x = 0; x != (MLX5E_PPORT_PER_PRIO_STATS_NUM /
      MLX5E_PPORT_PER_PRIO_STATS_NUM_PRIO); x++, y++)
   s->arg[y] = be64toh(ptr[x]);
 }

free_out:

 kvfree(in);
 kvfree(out);
}
