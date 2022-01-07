
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ofw_isa_intr_t ;
typedef int device_t ;
struct TYPE_4__ {int size; } ;


 void* ISAB_RANGE_PHYS (TYPE_1__*) ;
 int ISAB_RANGE_SPACE (TYPE_1__*) ;


 int OF_getprop_alloc_multi (int ,char*,int,void**) ;
 int device_get_parent (int ) ;
 int isa_iinfo ;
 void* isa_io_base ;
 int isa_io_limit ;
 void* isa_mem_base ;
 int isa_mem_limit ;
 int isa_setup_children (int ,int ) ;
 int isab_node ;
 int isab_nrange ;
 TYPE_1__* isab_ranges ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_setup_iinfo (int ,int *,int) ;
 int panic (char*) ;

void
isa_init(device_t dev)
{
 device_t bridge;
 int i;


 bridge = device_get_parent(dev);
 isab_node = ofw_bus_get_node(bridge);
 isab_nrange = OF_getprop_alloc_multi(isab_node, "ranges",
     sizeof(*isab_ranges), (void **)&isab_ranges);
 if (isab_nrange <= 0)
  panic("isa_init: cannot get bridge range property");

 ofw_bus_setup_iinfo(isab_node, &isa_iinfo, sizeof(ofw_isa_intr_t));

 isa_setup_children(dev, isab_node);

 for (i = isab_nrange - 1; i >= 0; i--) {
  switch(ISAB_RANGE_SPACE(&isab_ranges[i])) {
  case 129:

   isa_io_base = ISAB_RANGE_PHYS(&isab_ranges[i]);
   isa_io_limit = isab_ranges[i].size;
   break;
  case 128:

   isa_mem_base = ISAB_RANGE_PHYS(&isab_ranges[i]);
   isa_mem_limit = isab_ranges[i].size;
   break;
  }
 }
}
