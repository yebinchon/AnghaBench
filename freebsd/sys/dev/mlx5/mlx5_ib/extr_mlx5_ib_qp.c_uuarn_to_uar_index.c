
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_uuar_info {TYPE_1__* uars; } ;
struct TYPE_2__ {int index; } ;


 int MLX5_BF_REGS_PER_PAGE ;

__attribute__((used)) static int uuarn_to_uar_index(struct mlx5_uuar_info *uuari, int uuarn)
{
 return uuari->uars[uuarn / MLX5_BF_REGS_PER_PAGE].index;
}
