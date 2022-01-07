
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_dev {TYPE_1__* iseg; } ;
struct TYPE_2__ {int initializing; } ;


 int ioread32be (int *) ;

__attribute__((used)) static inline int fw_initializing(struct mlx5_core_dev *dev)
{
 return ioread32be(&dev->iseg->initializing) >> 31;
}
