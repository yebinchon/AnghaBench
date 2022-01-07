
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ifla_vf_info {int dummy; } ;
struct ib_device {int dummy; } ;


 int EOPNOTSUPP ;

int mlx5_ib_get_vf_config(struct ib_device *device, int vf, u8 port,
     struct ifla_vf_info *info)
{
 return -EOPNOTSUPP;
}
