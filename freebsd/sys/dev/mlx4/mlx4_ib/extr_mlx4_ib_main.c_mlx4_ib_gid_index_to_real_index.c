
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct mlx4_port_gid_table {TYPE_1__* gids; } ;
struct mlx4_ib_iboe {int lock; struct mlx4_port_gid_table* gids; } ;
struct mlx4_ib_dev {int ib_dev; int dev; struct mlx4_ib_iboe iboe; } ;
struct ib_gid_attr {scalar_t__ gid_type; scalar_t__ ndev; } ;
struct gid_cache_context {int real_index; } ;
typedef int gid ;
struct TYPE_2__ {scalar_t__ gid_type; struct gid_cache_context* ctx; union ib_gid gid; } ;


 int EINVAL ;
 int MLX4_MAX_PORTS ;
 int MLX4_MAX_PORT_GIDS ;
 int dev_put (scalar_t__) ;
 int ib_get_cached_gid (int *,int,int,union ib_gid*,struct ib_gid_attr*) ;
 int memcmp (union ib_gid*,union ib_gid*,int) ;
 scalar_t__ mlx4_is_bonded (int ) ;
 int rdma_cap_roce_gid_table (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 union ib_gid zgid ;

int mlx4_ib_gid_index_to_real_index(struct mlx4_ib_dev *ibdev,
        u8 port_num, int index)
{
 struct mlx4_ib_iboe *iboe = &ibdev->iboe;
 struct gid_cache_context *ctx = ((void*)0);
 union ib_gid gid;
 struct mlx4_port_gid_table *port_gid_table;
 int real_index = -EINVAL;
 int i;
 int ret;
 unsigned long flags;
 struct ib_gid_attr attr;

 if (port_num > MLX4_MAX_PORTS)
  return -EINVAL;

 if (mlx4_is_bonded(ibdev->dev))
  port_num = 1;

 if (!rdma_cap_roce_gid_table(&ibdev->ib_dev, port_num))
  return index;

 ret = ib_get_cached_gid(&ibdev->ib_dev, port_num, index, &gid, &attr);
 if (ret)
  return ret;

 if (attr.ndev)
  dev_put(attr.ndev);

 if (!memcmp(&gid, &zgid, sizeof(gid)))
  return -EINVAL;

 spin_lock_irqsave(&iboe->lock, flags);
 port_gid_table = &iboe->gids[port_num - 1];

 for (i = 0; i < MLX4_MAX_PORT_GIDS; ++i)
  if (!memcmp(&port_gid_table->gids[i].gid, &gid, sizeof(gid)) &&
      attr.gid_type == port_gid_table->gids[i].gid_type) {
   ctx = port_gid_table->gids[i].ctx;
   break;
  }
 if (ctx)
  real_index = ctx->real_index;
 spin_unlock_irqrestore(&iboe->lock, flags);
 return real_index;
}
