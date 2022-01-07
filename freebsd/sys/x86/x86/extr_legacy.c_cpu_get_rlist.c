
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct cpu_device {struct resource_list cd_rl; } ;
typedef int device_t ;


 struct cpu_device* device_get_ivars (int ) ;

__attribute__((used)) static struct resource_list *
cpu_get_rlist(device_t dev, device_t child)
{
 struct cpu_device *cpdev;

 cpdev = device_get_ivars(child);
 return (&cpdev->cd_rl);
}
