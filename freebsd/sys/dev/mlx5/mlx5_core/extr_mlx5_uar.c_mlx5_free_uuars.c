
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_uuar_info {int num_uars; TYPE_1__* uars; TYPE_1__* bfs; TYPE_1__* bitmap; TYPE_1__* count; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int index; int map; } ;


 int iounmap (int ) ;
 int kfree (TYPE_1__*) ;
 int mlx5_cmd_free_uar (struct mlx5_core_dev*,int ) ;

int mlx5_free_uuars(struct mlx5_core_dev *dev, struct mlx5_uuar_info *uuari)
{
 int i = uuari->num_uars;

 for (i--; i >= 0; i--) {
  iounmap(uuari->uars[i].map);
  mlx5_cmd_free_uar(dev, uuari->uars[i].index);
 }

 kfree(uuari->count);
 kfree(uuari->bitmap);
 kfree(uuari->bfs);
 kfree(uuari->uars);

 return 0;
}
