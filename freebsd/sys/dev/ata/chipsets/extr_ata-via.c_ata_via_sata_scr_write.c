
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int32_t ;
typedef int device_t ;



 int ATA_SC_DET_DISABLE ;
 int ATA_SC_DET_RESET ;
 int ATA_SC_IPM_DIS_PARTIAL ;
 int ATA_SC_IPM_DIS_SLUMBER ;

 int EINVAL ;
 int device_get_parent (int ) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_via_sata_scr_write(device_t dev, int port, int reg, u_int32_t value)
{
 device_t parent;
 uint32_t val;

 parent = device_get_parent(dev);
 port = (port == 1) ? 1 : 0;
 switch (reg) {
 case 128:
  pci_write_config(parent, 0xa8 + port * 4, value, 4);
  break;
 case 129:
  val = 0;
  if (value & ATA_SC_DET_RESET)
   val |= 0x01;
  if (value & ATA_SC_DET_DISABLE)
   val |= 0x02;
  if (value & ATA_SC_IPM_DIS_PARTIAL)
   val |= 0x04;
  if (value & ATA_SC_IPM_DIS_SLUMBER)
   val |= 0x08;
  pci_write_config(parent, 0xa4 + port, val, 1);
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
