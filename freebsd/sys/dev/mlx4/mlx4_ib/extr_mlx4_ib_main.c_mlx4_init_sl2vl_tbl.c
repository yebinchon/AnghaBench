
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct mlx4_ib_dev {int * sl2vl; int ib_dev; TYPE_1__* dev; } ;
struct TYPE_4__ {int num_ports; scalar_t__* port_type; } ;
struct TYPE_3__ {TYPE_2__ caps; } ;


 scalar_t__ MLX4_PORT_TYPE_ETH ;
 int atomic64_set (int *,scalar_t__) ;
 int mlx4_ib_query_sl2vl (int *,int,scalar_t__*) ;
 int pr_err (char*,int,int) ;

__attribute__((used)) static void mlx4_init_sl2vl_tbl(struct mlx4_ib_dev *mdev)
{
 u64 sl2vl;
 int i;
 int err;

 for (i = 1; i <= mdev->dev->caps.num_ports; i++) {
  if (mdev->dev->caps.port_type[i] == MLX4_PORT_TYPE_ETH)
   continue;
  err = mlx4_ib_query_sl2vl(&mdev->ib_dev, i, &sl2vl);
  if (err) {
   pr_err("Unable to get default sl to vl mapping for port %d.  Using all zeroes (%d)\n",
          i, err);
   sl2vl = 0;
  }
  atomic64_set(&mdev->sl2vl[i - 1], sl2vl);
 }
}
