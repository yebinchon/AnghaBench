
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef unsigned int u32 ;
struct TYPE_8__ {TYPE_3__* eq; } ;
struct mlx4_priv {TYPE_4__ eq_table; } ;
struct TYPE_5__ {int num_comp_vectors; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_6__ {int ports; } ;
struct TYPE_7__ {TYPE_2__ actv_ports; } ;


 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int test_bit (scalar_t__,int ) ;

u32 mlx4_get_eqs_per_port(struct mlx4_dev *dev, u8 port)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 unsigned int i;
 unsigned int sum = 0;

 for (i = 0; i < dev->caps.num_comp_vectors + 1; i++)
  sum += !!test_bit(port - 1,
      priv->eq_table.eq[i].actv_ports.ports);

 return sum;
}
