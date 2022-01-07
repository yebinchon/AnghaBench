
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
typedef int device_t ;


 struct resource_list* BUS_GET_RESOURCE_LIST (int ,int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bhnd_get_core_index (int ) ;
 scalar_t__ bus_print_child_domain (int ,int ) ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 scalar_t__ printf (char*,int) ;
 scalar_t__ resource_list_print_type (struct resource_list*,char*,int ,char*) ;

int
bhnd_generic_print_child(device_t dev, device_t child)
{
 struct resource_list *rl;
 int retval = 0;

 retval += bus_print_child_header(dev, child);

 rl = BUS_GET_RESOURCE_LIST(dev, child);


 if (rl != ((void*)0)) {
  retval += resource_list_print_type(rl, "mem", SYS_RES_MEMORY,
      "%#jx");

  retval += resource_list_print_type(rl, "irq", SYS_RES_IRQ,
      "%#jd");
 }

 retval += printf(" at core %u", bhnd_get_core_index(child));

 retval += bus_print_child_domain(dev, child);
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
