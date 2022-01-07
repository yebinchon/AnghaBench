
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
struct mlx4_mac_table {int * entries; int * refs; } ;
struct mlx4_port_info {struct mlx4_mac_table mac_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_port_info* port; } ;


 int ENOENT ;
 int MLX4_MAC_MASK ;
 int MLX4_MAX_MAC_NUM ;
 int be64_to_cpu (int ) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;

int mlx4_find_cached_mac(struct mlx4_dev *dev, u8 port, u64 mac, int *idx)
{
 struct mlx4_port_info *info = &mlx4_priv(dev)->port[port];
 struct mlx4_mac_table *table = &info->mac_table;
 int i;

 for (i = 0; i < MLX4_MAX_MAC_NUM; i++) {
  if (!table->refs[i])
   continue;

  if (mac == (MLX4_MAC_MASK & be64_to_cpu(table->entries[i]))) {
   *idx = i;
   return 0;
  }
 }

 return -ENOENT;
}
