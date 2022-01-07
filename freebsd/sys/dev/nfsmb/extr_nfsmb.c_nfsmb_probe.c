
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ NFSMB_VENDORID_NVIDIA ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
nfsmb_probe(device_t dev)
{
 u_int16_t vid;
 u_int16_t did;

 vid = pci_get_vendor(dev);
 did = pci_get_device(dev);

 if (vid == NFSMB_VENDORID_NVIDIA) {
  switch(did) {
  case 141:
  case 140:
  case 138:
  case 139:
  case 128:
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
   device_set_desc(dev, "nForce2/3/4 MCP SMBus Controller");
   return (BUS_PROBE_DEFAULT);
  }
 }

 return (ENXIO);
}
