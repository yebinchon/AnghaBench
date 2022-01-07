
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node_guid; int node_desc; } ;
struct mlx5_ib_dev {TYPE_1__ ib_dev; } ;


 int mlx5_query_node_desc (struct mlx5_ib_dev*,int ) ;
 int mlx5_query_node_guid (struct mlx5_ib_dev*,int *) ;

__attribute__((used)) static int init_node_data(struct mlx5_ib_dev *dev)
{
 int err;

 err = mlx5_query_node_desc(dev, dev->ib_dev.node_desc);
 if (err)
  return err;

 return mlx5_query_node_guid(dev, &dev->ib_dev.node_guid);
}
