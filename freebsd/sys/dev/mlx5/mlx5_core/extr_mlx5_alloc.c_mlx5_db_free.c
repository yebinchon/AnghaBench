
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* pgdir; } ;
struct mlx5_db {TYPE_2__ u; int index; } ;
struct TYPE_4__ {int pgdir_mutex; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct TYPE_6__ {int list; int fw_page; int bitmap; } ;


 int MLX5_DB_PER_PAGE ;
 int __set_bit (int ,int ) ;
 scalar_t__ bitmap_full (int ,int ) ;
 int kfree (TYPE_3__*) ;
 int list_del (int *) ;
 int mlx5_fwp_free (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx5_db_free(struct mlx5_core_dev *dev, struct mlx5_db *db)
{
 mutex_lock(&dev->priv.pgdir_mutex);

 __set_bit(db->index, db->u.pgdir->bitmap);

 if (bitmap_full(db->u.pgdir->bitmap, MLX5_DB_PER_PAGE)) {
  mlx5_fwp_free(db->u.pgdir->fw_page);
  list_del(&db->u.pgdir->list);
  kfree(db->u.pgdir);
 }

 mutex_unlock(&dev->priv.pgdir_mutex);
}
