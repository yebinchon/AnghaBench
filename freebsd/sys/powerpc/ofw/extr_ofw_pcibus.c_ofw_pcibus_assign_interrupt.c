
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int ofw_pci_intr_t ;
typedef int iparent ;
typedef int intr ;
typedef int icells ;
typedef int device_t ;


 int OF_getencprop (int,char*,int*,int) ;
 int OF_node_from_xref (int) ;
 int PCIB_ROUTE_INTERRUPT (int ,int ,int) ;
 int device_get_parent (int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_map_intr (int ,int,int,int*) ;
 int pci_get_intpin (int ) ;

__attribute__((used)) static int
ofw_pcibus_assign_interrupt(device_t dev, device_t child)
{
 ofw_pci_intr_t intr[2];
 phandle_t node, iparent;
 int isz, icells;

 node = ofw_bus_get_node(child);

 if (node == -1) {


  intr[0] = pci_get_intpin(child);
  return (PCIB_ROUTE_INTERRUPT(device_get_parent(dev), child,
      intr[0]));
 }






 iparent = -1;
 if (OF_getencprop(node, "interrupt-parent", &iparent,
     sizeof(iparent)) < 0)
  iparent = -1;
 icells = 1;
 if (iparent != -1)
  OF_getencprop(OF_node_from_xref(iparent), "#interrupt-cells",
      &icells, sizeof(icells));






 isz = OF_getencprop(node, "AAPL,interrupts", intr, sizeof(intr));
 if (isz == sizeof(intr[0])*icells)
  return ((iparent == -1) ? intr[0] : ofw_bus_map_intr(dev,
      iparent, icells, intr));

 isz = OF_getencprop(node, "interrupts", intr, sizeof(intr));
 if (isz == sizeof(intr[0])*icells) {
  if (iparent != -1)
   intr[0] = ofw_bus_map_intr(dev, iparent, icells, intr);
 } else {

  intr[0] = pci_get_intpin(child);
 }
 return (PCIB_ROUTE_INTERRUPT(device_get_parent(dev), child, intr[0]));
}
