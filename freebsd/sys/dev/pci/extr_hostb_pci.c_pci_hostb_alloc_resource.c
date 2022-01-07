
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 struct resource* bus_alloc_resource (int ,int,int*,int ,int ,int ,int ) ;

__attribute__((used)) static struct resource *
pci_hostb_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{

 return (bus_alloc_resource(dev, type, rid, start, end, count, flags));
}
