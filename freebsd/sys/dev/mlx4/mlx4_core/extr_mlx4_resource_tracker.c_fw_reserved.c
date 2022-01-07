
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* reserved_qps_cnt; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 size_t MLX4_QP_REGION_FW ;

__attribute__((used)) static int fw_reserved(struct mlx4_dev *dev, int qpn)
{
 return qpn < dev->caps.reserved_qps_cnt[MLX4_QP_REGION_FW];
}
