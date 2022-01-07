
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vmbus_softc {int vmbus_mmio_res; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 struct resource* BUS_ALLOC_RESOURCE (int ,int ,int,int*,int ,int ,int ,int ) ;
 int SYS_RES_MEMORY ;
 int device_get_parent (int ) ;
 struct vmbus_softc* device_get_softc (int ) ;
 struct resource* pcib_host_res_alloc (int *,int ,int,int*,int ,int ,int ,int ) ;

__attribute__((used)) static struct resource *
vmbus_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 device_t parent = device_get_parent(dev);
 struct resource *res;
 {
  res = BUS_ALLOC_RESOURCE(parent, child, type, rid, start,
      end, count, flags);
 }

 return (res);
}
