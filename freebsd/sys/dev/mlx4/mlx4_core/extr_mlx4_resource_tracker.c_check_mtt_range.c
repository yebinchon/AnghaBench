
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int res_id; } ;
struct res_mtt {int order; TYPE_1__ com; } ;
struct mlx4_dev {int dummy; } ;


 int EPERM ;

__attribute__((used)) static int check_mtt_range(struct mlx4_dev *dev, int slave, int start,
      int size, struct res_mtt *mtt)
{
 int res_start = mtt->com.res_id;
 int res_size = (1 << mtt->order);

 if (start < res_start || start + size > res_start + res_size)
  return -EPERM;
 return 0;
}
