
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int device_t ;


 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_set_resource (int ,int ,int,int ,size_t) ;
 int panic (char*,int,int) ;

__attribute__((used)) static void
apic_add_resource(device_t dev, int rid, vm_paddr_t base, size_t length)
{
 int error;

 error = bus_set_resource(dev, SYS_RES_MEMORY, rid, base, length);
 if (error)
  panic("apic_add_resource: resource %d failed set with %d", rid,
      error);
 bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_SHAREABLE);
}
