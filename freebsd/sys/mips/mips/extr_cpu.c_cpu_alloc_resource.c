
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int cpu_hardirq_rman ;
 struct resource* rman_reserve_resource (int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static struct resource *
cpu_alloc_resource(device_t dev, device_t child, int type, int *rid,
     rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct resource *res;

 if (type != SYS_RES_IRQ)
  return (((void*)0));
 res = rman_reserve_resource(&cpu_hardirq_rman, start, end, count, 0,
        child);
 return (res);
}
