
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx5_core_dev {TYPE_3__* root_ns; } ;
struct TYPE_5__ {int base; } ;
struct TYPE_7__ {TYPE_1__ ns; } ;
struct TYPE_6__ {int max_ft_level; } ;


 int ENOMEM ;
 int FS_FT_NIC_RX ;
 scalar_t__ IS_ERR_OR_NULL (TYPE_3__*) ;
 int MLX5_CAP_FLOWTABLE (struct mlx5_core_dev*,int ) ;
 int MLX5_CORE_FS_ROOT_NS_NAME ;
 TYPE_3__* create_root_ns (struct mlx5_core_dev*,int ,int ) ;
 TYPE_2__ flow_table_properties_nic_receive ;
 scalar_t__ init_root_tree (struct mlx5_core_dev*,int,int *,int *) ;
 int root_fs ;
 int set_max_ft (TYPE_1__*) ;

__attribute__((used)) static int init_root_ns(struct mlx5_core_dev *dev)
{
 int max_ft_level = MLX5_CAP_FLOWTABLE(dev,
           flow_table_properties_nic_receive.
           max_ft_level);

 dev->root_ns = create_root_ns(dev, FS_FT_NIC_RX,
          MLX5_CORE_FS_ROOT_NS_NAME);
 if (IS_ERR_OR_NULL(dev->root_ns))
  goto err;


 if (init_root_tree(dev, max_ft_level, &root_fs, &dev->root_ns->ns.base))
  goto err;

 set_max_ft(&dev->root_ns->ns);

 return 0;
err:
 return -ENOMEM;
}
