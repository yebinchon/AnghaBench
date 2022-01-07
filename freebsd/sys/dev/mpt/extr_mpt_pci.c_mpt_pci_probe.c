
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int BUS_PROBE_LOW_PRIORITY ;
 int ENXIO ;
 scalar_t__ MPI_MANUFACTPAGE_VENDORID_LSILOGIC ;
 int device_set_desc (int ,char const*) ;
 int pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
mpt_pci_probe(device_t dev)
{
 const char *desc;
 int rval;

 if (pci_get_vendor(dev) != MPI_MANUFACTPAGE_VENDORID_LSILOGIC)
  return (ENXIO);

 rval = BUS_PROBE_DEFAULT;
 switch (pci_get_device(dev)) {
 case 151:
  desc = "LSILogic FC909 FC Adapter";
  break;
 case 152:
  desc = "LSILogic FC909A FC Adapter";
  break;
 case 150:
  desc = "LSILogic FC919 FC Adapter";
  break;
 case 147:
  desc = "LSILogic FC919 LAN Adapter";
  break;
 case 146:
  desc = "Dual LSILogic FC929 FC Adapter";
  break;
 case 143:
  desc = "Dual LSILogic FC929 LAN Adapter";
  break;
 case 149:
  desc = "LSILogic FC919 FC PCI-X Adapter";
  break;
 case 148:
  desc = "LSILogic FC919 LAN PCI-X Adapter";
  break;
 case 145:
  desc = "Dual LSILogic FC929X 2Gb/s FC PCI-X Adapter";
  break;
 case 144:
  desc = "Dual LSILogic FC929X LAN PCI-X Adapter";
  break;
 case 142:
  desc = "Dual LSILogic FC7X04X 4Gb/s FC PCI-Express Adapter";
  break;
 case 141:
  desc = "Dual LSILogic FC7X04X 4Gb/s FC PCI-X Adapter";
  break;
 case 140:
 case 139:
  desc = "LSILogic 1030 Ultra4 Adapter";
  break;
 case 130:




  rval = BUS_PROBE_LOW_PRIORITY;

 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 129:
 case 128:
  desc = "LSILogic SAS/SATA Adapter";
  break;
 default:
  return (ENXIO);
 }

 device_set_desc(dev, desc);
 return (rval);
}
