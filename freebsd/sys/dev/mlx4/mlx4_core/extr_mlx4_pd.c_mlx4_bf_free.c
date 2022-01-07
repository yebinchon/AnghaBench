
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_priv {int bf_mutex; int bf_list; } ;
struct TYPE_4__ {int bf_reg_size; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_bf {int reg; TYPE_2__* uar; } ;
struct TYPE_5__ {int bf_map; int free_bf_bmap; int bf_list; int map; } ;


 int io_mapping_unmap (int) ;
 int iounmap (int ) ;
 int kfree (TYPE_2__*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_uar_free (struct mlx4_dev*,TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx4_bf_free(struct mlx4_dev *dev, struct mlx4_bf *bf)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int idx;

 if (!bf->uar || !bf->uar->bf_map)
  return;

 mutex_lock(&priv->bf_mutex);
 idx = (bf->reg - bf->uar->bf_map) / dev->caps.bf_reg_size;
 bf->uar->free_bf_bmap &= ~(1 << idx);
 if (!bf->uar->free_bf_bmap) {
  if (!list_empty(&bf->uar->bf_list))
   list_del(&bf->uar->bf_list);

  io_mapping_unmap(bf->uar->bf_map);
  iounmap(bf->uar->map);
  mlx4_uar_free(dev, bf->uar);
  kfree(bf->uar);
 } else if (list_empty(&bf->uar->bf_list))
  list_add(&bf->uar->bf_list, &priv->bf_list);

 mutex_unlock(&priv->bf_mutex);
}
