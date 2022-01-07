
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 scalar_t__ VGA_MEM_BASE ;
 scalar_t__ VGA_MEM_SIZE ;
 struct resource* bus_alloc_resource (int ,int ,int*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int panic (char*) ;

__attribute__((used)) static int
vtvga_attach(device_t dev)
{
 struct resource *pseudo_phys_res;
 int res_id;

 res_id = 0;
 pseudo_phys_res = bus_alloc_resource(dev, SYS_RES_MEMORY,
     &res_id, VGA_MEM_BASE, VGA_MEM_BASE + VGA_MEM_SIZE - 1,
     VGA_MEM_SIZE, RF_ACTIVE);
 if (pseudo_phys_res == ((void*)0))
  panic("Unable to reserve vt_vga memory");
 return (0);
}
