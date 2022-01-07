
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef void* (* pci_read_config_fn ) (int,int,int,int,int) ;


 int PCIR_DEVVENDOR ;

int
host_pcib_get_busno(pci_read_config_fn read_config, int bus, int slot, int func,
    uint8_t *busnum)
{
 uint32_t id;

 id = read_config(bus, slot, func, PCIR_DEVVENDOR, 4);
 if (id == 0xffffffff)
  return (0);

 switch (id) {
 case 0x12258086:



  *busnum = bus;
  break;
 case 0x84c48086:

  *busnum = read_config(bus, slot, func, 0x4a, 1);
  break;
 case 0x84ca8086:
  return (0);
 case 0x84cb8086:
  switch (slot) {
  case 0x12:

   *busnum = read_config(bus, 0x10, func, 0xd0, 1);
   break;
  case 0x13:

   *busnum = read_config(bus, 0x10, func, 0xd1, 1) + 1;
   break;
  case 0x14:

   *busnum = read_config(bus, 0x10, func, 0xd3, 1);
   break;
  case 0x15:

   *busnum = read_config(bus, 0x10, func, 0xd4, 1) + 1;
   break;
  }
  break;


 case 0x00051166:
 case 0x00061166:
 case 0x00081166:
 case 0x00091166:
 case 0x00101166:
 case 0x00111166:
 case 0x00171166:
 case 0x01011166:
 case 0x010f1014:
 case 0x01101166:
 case 0x02011166:
 case 0x02251166:
 case 0x03021014:
  *busnum = read_config(bus, slot, func, 0x44, 1);
  break;


 case 0x60100e11:
  *busnum = read_config(bus, slot, func, 0xc8, 1);
  break;
 default:

  return 0;
 }

 return 1;
}
