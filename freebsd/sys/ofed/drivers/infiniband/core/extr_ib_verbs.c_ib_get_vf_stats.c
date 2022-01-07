
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ifla_vf_stats {int dummy; } ;
struct ib_device {int (* get_vf_stats ) (struct ib_device*,int,int ,struct ifla_vf_stats*) ;} ;


 int ENOSYS ;
 int stub1 (struct ib_device*,int,int ,struct ifla_vf_stats*) ;

int ib_get_vf_stats(struct ib_device *device, int vf, u8 port,
      struct ifla_vf_stats *stats)
{
 if (!device->get_vf_stats)
  return -ENOSYS;

 return device->get_vf_stats(device, vf, port, stats);
}
