
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicpf {int * reg_base; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int VNIC_PF_REG_RID ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
nicpf_alloc_res(struct nicpf *nic)
{
 device_t dev;
 int rid;

 dev = nic->dev;

 rid = VNIC_PF_REG_RID;
 nic->reg_base = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (nic->reg_base == ((void*)0)) {

  if (bootverbose) {
   device_printf(dev,
       "Could not allocate registers memory\n");
  }
  return (ENXIO);
 }

 return (0);
}
