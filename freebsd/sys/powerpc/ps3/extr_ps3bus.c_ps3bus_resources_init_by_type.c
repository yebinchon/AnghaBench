
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct rman {int dummy; } ;
struct ps3bus_devinfo {int bus; int dev; int resources; int devtype; int bustype; } ;


 int PS3_LPAR_ID_PME ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int fls (int ) ;
 int lv1_connect_irq_plug_ext (scalar_t__,int,scalar_t__,scalar_t__,int ) ;
 int lv1_construct_io_irq_outlet (scalar_t__,scalar_t__*) ;
 int lv1_get_logical_ppe_id (scalar_t__*) ;
 int lv1_get_repository_node_value (int ,int,int,int,int,scalar_t__*,scalar_t__*) ;
 int lv1_map_device_mmio_region (int,int,scalar_t__,scalar_t__,int,scalar_t__*) ;
 int lv1_repository_string (char*) ;
 int mfctrl () ;
 int printf (char*,int,int,int ,int ,int) ;
 int resource_list_add (int *,int ,int,scalar_t__,scalar_t__,scalar_t__) ;
 int resource_list_init (int *) ;
 int rman_manage_region (struct rman*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ps3bus_resources_init_by_type(struct rman *rm, int bus_index, int dev_index,
    uint64_t irq_type, uint64_t reg_type, struct ps3bus_devinfo *dinfo)
{
 uint64_t _irq_type, irq, outlet;
 uint64_t _reg_type, paddr, len;
 uint64_t ppe, junk;
 int i, result;
 int thread;

 resource_list_init(&dinfo->resources);

 lv1_get_logical_ppe_id(&ppe);
 thread = 32 - fls(mfctrl());


 for (i = 0; i < 10; i++) {
  result = lv1_get_repository_node_value(PS3_LPAR_ID_PME,
      (lv1_repository_string("bus") >> 32) | bus_index,
      lv1_repository_string("dev") | dev_index,
      lv1_repository_string("intr") | i, 0, &_irq_type, &irq);

  if (result != 0)
   break;

  if (_irq_type != irq_type)
   continue;

  lv1_construct_io_irq_outlet(irq, &outlet);
  lv1_connect_irq_plug_ext(ppe, thread, outlet, outlet,
      0);
  resource_list_add(&dinfo->resources, SYS_RES_IRQ, i,
      outlet, outlet, 1);
 }


 for (i = 0; i < 10; i++) {
  result = lv1_get_repository_node_value(PS3_LPAR_ID_PME,
      (lv1_repository_string("bus") >> 32) | bus_index,
      lv1_repository_string("dev") | dev_index,
      lv1_repository_string("reg") | i,
      lv1_repository_string("type"), &_reg_type, &junk);

  if (result != 0)
   break;

  if (_reg_type != reg_type)
   continue;

  result = lv1_get_repository_node_value(PS3_LPAR_ID_PME,
      (lv1_repository_string("bus") >> 32) | bus_index,
      lv1_repository_string("dev") | dev_index,
      lv1_repository_string("reg") | i,
      lv1_repository_string("data"), &paddr, &len);

  result = lv1_map_device_mmio_region(dinfo->bus, dinfo->dev,
      paddr, len, 12 , &paddr);

  if (result != 0) {
   printf("Mapping registers failed for device "
       "%d.%d (%ld.%ld): %d\n", dinfo->bus, dinfo->dev,
       dinfo->bustype, dinfo->devtype, result);
   break;
  }

  rman_manage_region(rm, paddr, paddr + len - 1);
  resource_list_add(&dinfo->resources, SYS_RES_MEMORY, i,
      paddr, paddr + len, len);
 }
}
