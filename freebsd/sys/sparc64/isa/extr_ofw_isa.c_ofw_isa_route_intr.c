
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_iinfo {int dummy; } ;
struct isa_regs {int dummy; } ;
typedef int reg ;
typedef int phandle_t ;
typedef int ofw_pci_intr_t ;
typedef int ofw_isa_intr_t ;
typedef int mintr ;
typedef int intr ;
typedef int device_t ;


 int PCIB_ROUTE_INTERRUPT (int ,int ,int ) ;
 int device_get_parent (int ) ;
 int ofw_bus_lookup_imap (int ,struct ofw_bus_iinfo*,struct isa_regs*,int,int *,int,int *,int,int *) ;

ofw_pci_intr_t
ofw_isa_route_intr(device_t bridge, phandle_t node, struct ofw_bus_iinfo *ii,
    ofw_isa_intr_t intr)
{
 struct isa_regs reg;
 device_t pbridge;
 ofw_isa_intr_t mintr;

 pbridge = device_get_parent(device_get_parent(bridge));




 if (!ofw_bus_lookup_imap(node, ii, &reg, sizeof(reg),
     &intr, sizeof(intr), &mintr, sizeof(mintr), ((void*)0))) {

  mintr = PCIB_ROUTE_INTERRUPT(pbridge, bridge, intr);
 }
 return (mintr);
}
