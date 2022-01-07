
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int AMI_RAID_SUBVENDOR_ID ;
 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int ISP_CORE_VERSION_MAJOR ;
 int ISP_CORE_VERSION_MINOR ;
 int ISP_PLATFORM_VERSION_MAJOR ;
 int ISP_PLATFORM_VERSION_MINOR ;
 scalar_t__ bootverbose ;
 int device_set_desc (int ,char*) ;
 scalar_t__ isp_announced ;
 int pci_get_device (int ) ;
 int pci_get_subvendor (int ) ;
 int pci_get_vendor (int ) ;
 int printf (char*,int,int,int,int) ;

__attribute__((used)) static int
isp_pci_probe(device_t dev)
{
 switch ((pci_get_device(dev) << 16) | (pci_get_vendor(dev))) {
 case 149:
  device_set_desc(dev, "Qlogic ISP 1020/1040 PCI SCSI Adapter");
  break;
 case 148:
  device_set_desc(dev, "Qlogic ISP 1080 PCI SCSI Adapter");
  break;
 case 146:
  device_set_desc(dev, "Qlogic ISP 1240 PCI SCSI Adapter");
  break;
 case 145:
  device_set_desc(dev, "Qlogic ISP 1280 PCI SCSI Adapter");
  break;
 case 150:
  device_set_desc(dev, "Qlogic ISP 10160 PCI SCSI Adapter");
  break;
 case 147:
  if (pci_get_subvendor(dev) == AMI_RAID_SUBVENDOR_ID) {
   return (ENXIO);
  }
  device_set_desc(dev, "Qlogic ISP 12160 PCI SCSI Adapter");
  break;
 case 143:
  device_set_desc(dev, "Qlogic ISP 2100 PCI FC-AL Adapter");
  break;
 case 142:
  device_set_desc(dev, "Qlogic ISP 2200 PCI FC-AL Adapter");
  break;
 case 141:
  device_set_desc(dev, "Qlogic ISP 2300 PCI FC-AL Adapter");
  break;
 case 140:
  device_set_desc(dev, "Qlogic ISP 2312 PCI FC-AL Adapter");
  break;
 case 139:
  device_set_desc(dev, "Qlogic ISP 2322 PCI FC-AL Adapter");
  break;
 case 138:
  device_set_desc(dev, "Qlogic ISP 2422 PCI FC-AL Adapter");
  break;
 case 137:
  device_set_desc(dev, "Qlogic ISP 2432 PCI FC-AL Adapter");
  break;
 case 136:
  device_set_desc(dev, "Qlogic ISP 2532 PCI FC-AL Adapter");
  break;
 case 131:
  device_set_desc(dev, "Qlogic ISP 5432 PCI FC-AL Adapter");
  break;
 case 130:
  device_set_desc(dev, "Qlogic ISP 6312 PCI FC-AL Adapter");
  break;
 case 129:
  device_set_desc(dev, "Qlogic ISP 6322 PCI FC-AL Adapter");
  break;
 case 144:
  device_set_desc(dev, "Qlogic ISP 2031 PCI FC-AL Adapter");
  break;
 case 128:
  device_set_desc(dev, "Qlogic ISP 8031 PCI FCoE Adapter");
  break;
 case 135:
  device_set_desc(dev, "Qlogic ISP 2684 PCI FC Adapter");
  break;
 case 134:
  device_set_desc(dev, "Qlogic ISP 2692 PCI FC Adapter");
  break;
 case 133:
  device_set_desc(dev, "Qlogic ISP 2714 PCI FC Adapter");
  break;
 case 132:
  device_set_desc(dev, "Qlogic ISP 2722 PCI FC Adapter");
  break;
 default:
  return (ENXIO);
 }
 if (isp_announced == 0 && bootverbose) {
  printf("Qlogic ISP Driver, FreeBSD Version %d.%d, "
      "Core Version %d.%d\n",
      ISP_PLATFORM_VERSION_MAJOR, ISP_PLATFORM_VERSION_MINOR,
      ISP_CORE_VERSION_MAJOR, ISP_CORE_VERSION_MINOR);
  isp_announced++;
 }




 return (BUS_PROBE_DEFAULT);
}
