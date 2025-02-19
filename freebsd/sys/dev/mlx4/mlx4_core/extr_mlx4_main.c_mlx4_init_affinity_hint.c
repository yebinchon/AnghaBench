
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct mlx4_eq* eq; } ;
struct mlx4_priv {TYPE_1__ eq_table; } ;
struct mlx4_eq {int affinity_cpu_id; } ;
struct TYPE_4__ {int num_comp_vectors; } ;
struct mlx4_dev {TYPE_2__ caps; } ;


 int EINVAL ;
 int MLX4_EQ_ASYNC ;
 scalar_t__ mlx4_get_eqs_per_port (struct mlx4_dev*,int) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int num_online_cpus () ;

__attribute__((used)) static int mlx4_init_affinity_hint(struct mlx4_dev *dev, int port, int eqn)
{
 int requested_cpu = 0;
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_eq *eq;
 int off = 0;
 int i;

 if (eqn > dev->caps.num_comp_vectors)
  return -EINVAL;

 for (i = 1; i < port; i++)
  off += mlx4_get_eqs_per_port(dev, i);

 requested_cpu = eqn - off - !!(eqn > MLX4_EQ_ASYNC);


 if (requested_cpu < 0)
  return 0;

 eq = &priv->eq_table.eq[eqn];

 eq->affinity_cpu_id = requested_cpu % num_online_cpus();

 return 0;
}
