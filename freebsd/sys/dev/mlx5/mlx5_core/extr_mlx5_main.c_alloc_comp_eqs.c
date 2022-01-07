
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_eq_table {int num_comp_vectors; int lock; int comp_eqs_list; } ;
struct mlx5_eq {int index; int list; int eqn; } ;
struct TYPE_3__ {int * uars; } ;
struct TYPE_4__ {TYPE_1__ uuari; struct mlx5_eq_table eq_table; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MLX5_COMP_EQ_SIZE ;
 scalar_t__ MLX5_EQ_VEC_COMP_BASE ;
 int free_comp_eqs (struct mlx5_core_dev*) ;
 int kfree (struct mlx5_eq*) ;
 struct mlx5_eq* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,int ) ;
 int mlx5_create_map_eq (struct mlx5_core_dev*,struct mlx5_eq*,scalar_t__,int,int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int alloc_comp_eqs(struct mlx5_core_dev *dev)
{
 struct mlx5_eq_table *table = &dev->priv.eq_table;
 struct mlx5_eq *eq;
 int ncomp_vec;
 int nent;
 int err;
 int i;

 INIT_LIST_HEAD(&table->comp_eqs_list);
 ncomp_vec = table->num_comp_vectors;
 nent = MLX5_COMP_EQ_SIZE;
 for (i = 0; i < ncomp_vec; i++) {
  eq = kzalloc(sizeof(*eq), GFP_KERNEL);

  err = mlx5_create_map_eq(dev, eq,
      i + MLX5_EQ_VEC_COMP_BASE, nent, 0,
      &dev->priv.uuari.uars[0]);
  if (err) {
   kfree(eq);
   goto clean;
  }
  mlx5_core_dbg(dev, "allocated completion EQN %d\n", eq->eqn);
  eq->index = i;
  spin_lock(&table->lock);
  list_add_tail(&eq->list, &table->comp_eqs_list);
  spin_unlock(&table->lock);
 }

 return 0;

clean:
 free_comp_eqs(dev);
 return err;
}
