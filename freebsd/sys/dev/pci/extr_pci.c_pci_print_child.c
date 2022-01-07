
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct pci_devinfo {struct resource_list resources; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bus_print_child_domain (int ,int ) ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 int device_get_flags (int ) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 scalar_t__ printf (char*,int,...) ;
 scalar_t__ resource_list_print_type (struct resource_list*,char*,int ,char*) ;

int
pci_print_child(device_t dev, device_t child)
{
 struct pci_devinfo *dinfo;
 struct resource_list *rl;
 int retval = 0;

 dinfo = device_get_ivars(child);
 rl = &dinfo->resources;

 retval += bus_print_child_header(dev, child);

 retval += resource_list_print_type(rl, "port", SYS_RES_IOPORT, "%#jx");
 retval += resource_list_print_type(rl, "mem", SYS_RES_MEMORY, "%#jx");
 retval += resource_list_print_type(rl, "irq", SYS_RES_IRQ, "%jd");
 if (device_get_flags(dev))
  retval += printf(" flags %#x", device_get_flags(dev));

 retval += printf(" at device %d.%d", pci_get_slot(child),
     pci_get_function(child));

 retval += bus_print_child_domain(dev, child);
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
