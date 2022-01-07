
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct mlx4_icm_table {int num_obj; int obj_size; int mutex; TYPE_1__** icm; int coherent; scalar_t__ virt; scalar_t__ lowmem; } ;
struct mlx4_dev {int dummy; } ;
typedef int gfp_t ;
struct TYPE_4__ {int refcount; } ;


 int ENOMEM ;
 int GFP_HIGHUSER ;
 int MLX4_TABLE_CHUNK_SIZE ;
 int PAGE_SHIFT ;
 int __GFP_NOWARN ;
 scalar_t__ mlx4_MAP_ICM (struct mlx4_dev*,TYPE_1__*,scalar_t__) ;
 TYPE_1__* mlx4_alloc_icm (struct mlx4_dev*,int,int,int ) ;
 int mlx4_free_icm (struct mlx4_dev*,TYPE_1__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx4_table_get(struct mlx4_dev *dev, struct mlx4_icm_table *table, u32 obj,
     gfp_t gfp)
{
 u32 i = (obj & (table->num_obj - 1)) /
   (MLX4_TABLE_CHUNK_SIZE / table->obj_size);
 int ret = 0;

 mutex_lock(&table->mutex);

 if (table->icm[i]) {
  ++table->icm[i]->refcount;
  goto out;
 }

 table->icm[i] = mlx4_alloc_icm(dev, MLX4_TABLE_CHUNK_SIZE >> PAGE_SHIFT,
           (table->lowmem ? gfp : GFP_HIGHUSER) |
           __GFP_NOWARN, table->coherent);
 if (!table->icm[i]) {
  ret = -ENOMEM;
  goto out;
 }

 if (mlx4_MAP_ICM(dev, table->icm[i], table->virt +
    (u64) i * MLX4_TABLE_CHUNK_SIZE)) {
  mlx4_free_icm(dev, table->icm[i], table->coherent);
  table->icm[i] = ((void*)0);
  ret = -ENOMEM;
  goto out;
 }

 ++table->icm[i]->refcount;

out:
 mutex_unlock(&table->mutex);
 return ret;
}
