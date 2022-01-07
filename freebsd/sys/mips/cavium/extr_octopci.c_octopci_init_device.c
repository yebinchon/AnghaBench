
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int device_t ;
typedef int bus_addr_t ;
struct TYPE_2__ {int board_type; } ;


 int CVMX_ADDR_DID (int ) ;

 int CVMX_FULL_DID (int ,int ) ;
 int CVMX_OCT_DID_PCI ;
 int CVMX_OCT_PCI_IO_BASE ;
 int CVMX_OCT_PCI_IO_SIZE ;
 int CVMX_OCT_PCI_MEM1_BASE ;
 int CVMX_OCT_PCI_MEM1_SIZE ;
 int CVMX_OCT_SUBDID_PCI_MEM1 ;
 int DELAY (int) ;
 int PCIB_BCR_PERR_ENABLE ;
 int PCIB_BCR_SECBUS_RESET ;
 int PCIB_BCR_SERR_ENABLE ;
 int PCIC_BRIDGE ;
 int PCIM_BAR_MEM_BASE ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PORTEN ;
 int PCIM_HDRTYPE ;



 int PCIR_BAR (int) ;
 int PCIR_BRIDGECTL_1 ;
 int PCIR_CACHELNSZ ;
 int PCIR_CLASS ;
 int PCIR_COMMAND ;
 int PCIR_HDRTYPE ;
 int PCIR_IOBASEH_1 ;
 int PCIR_IOBASEL_1 ;
 int PCIR_IOLIMITH_1 ;
 int PCIR_IOLIMITL_1 ;
 int PCIR_LATTIMER ;
 int PCIR_MEMBASE_1 ;
 int PCIR_MEMLIMIT_1 ;
 int PCIR_PRIBUS_1 ;
 int PCIR_SECBUS_1 ;
 int PCIR_SUBBUS_1 ;
 int PCIR_SUBCLASS ;
 int PCIS_BRIDGE_PCI ;
 int cvmx_read64_uint32 (int) ;
 TYPE_1__* cvmx_sysinfo_get () ;
 int cvmx_write64_uint32 (int,int ) ;
 int device_printf (int ,char*,unsigned int,unsigned int,unsigned int,int) ;
 int htole32 (int) ;
 int le32toh (int ) ;
 unsigned int octopci_init_bar (int ,unsigned int,unsigned int,unsigned int,unsigned int,int*) ;
 unsigned int octopci_init_bus (int ,unsigned int) ;
 int octopci_read_config (int ,unsigned int,unsigned int,unsigned int,int ,int) ;
 int octopci_write_config (int ,unsigned int,unsigned int,unsigned int,int ,unsigned int,int) ;

__attribute__((used)) static unsigned
octopci_init_device(device_t dev, unsigned b, unsigned s, unsigned f, unsigned secbus)
{
 unsigned barnum, bars;
 uint8_t brctl;
 uint8_t class, subclass;
 uint8_t command;
 uint8_t hdrtype;


 hdrtype = octopci_read_config(dev, b, s, f, PCIR_HDRTYPE, 1);




 command = octopci_read_config(dev, b, s, f, PCIR_COMMAND, 1);
 command &= ~(PCIM_CMD_MEMEN | PCIM_CMD_PORTEN);
 octopci_write_config(dev, b, s, f, PCIR_COMMAND, command, 1);

 DELAY(10000);


 switch (hdrtype & PCIM_HDRTYPE) {
 case 128:
  bars = 6;
  break;
 case 130:
  bars = 2;
  break;
 case 129:
  bars = 0;
  break;
 default:
  device_printf(dev, "%02x.%02x:%02x: invalid header type %#x\n",
      b, s, f, hdrtype);
  return (secbus);
 }

 barnum = 0;
 while (barnum < bars)
  barnum = octopci_init_bar(dev, b, s, f, barnum, &command);


 command |= PCIM_CMD_BUSMASTEREN;


 octopci_write_config(dev, b, s, f, PCIR_COMMAND, command, 1);

 DELAY(10000);






 octopci_write_config(dev, b, s, f, PCIR_CACHELNSZ, 16, 1);


 octopci_write_config(dev, b, s, f, PCIR_LATTIMER, 48, 1);


 switch (cvmx_sysinfo_get()->board_type) {
 default:
  break;
 }


 class = octopci_read_config(dev, b, s, f, PCIR_CLASS, 1);
 if (class != PCIC_BRIDGE)
  return (secbus);

 subclass = octopci_read_config(dev, b, s, f, PCIR_SUBCLASS, 1);
 if (subclass != PCIS_BRIDGE_PCI)
  return (secbus);


 command |= PCIM_CMD_MEMEN | PCIM_CMD_PORTEN;
 octopci_write_config(dev, b, s, f, PCIR_COMMAND, command, 1);


 brctl = octopci_read_config(dev, b, s, f, PCIR_BRIDGECTL_1, 1);
 brctl |= PCIB_BCR_PERR_ENABLE | PCIB_BCR_SERR_ENABLE;


 brctl |= PCIB_BCR_SECBUS_RESET;
 octopci_write_config(dev, b, s, f, PCIR_BRIDGECTL_1, brctl, 1);
 DELAY(100000);
 brctl &= ~PCIB_BCR_SECBUS_RESET;
 octopci_write_config(dev, b, s, f, PCIR_BRIDGECTL_1, brctl, 1);

 secbus++;


 octopci_write_config(dev, b, s, f, PCIR_MEMBASE_1,
     CVMX_OCT_PCI_MEM1_BASE >> 16, 2);
 octopci_write_config(dev, b, s, f, PCIR_MEMLIMIT_1,
     (CVMX_OCT_PCI_MEM1_BASE + CVMX_OCT_PCI_MEM1_SIZE - 1) >> 16, 2);

 octopci_write_config(dev, b, s, f, PCIR_IOBASEL_1,
     CVMX_OCT_PCI_IO_BASE >> 8, 1);
 octopci_write_config(dev, b, s, f, PCIR_IOBASEH_1,
     CVMX_OCT_PCI_IO_BASE >> 16, 2);

 octopci_write_config(dev, b, s, f, PCIR_IOLIMITL_1,
     (CVMX_OCT_PCI_IO_BASE + CVMX_OCT_PCI_IO_SIZE - 1) >> 8, 1);
 octopci_write_config(dev, b, s, f, PCIR_IOLIMITH_1,
     (CVMX_OCT_PCI_IO_BASE + CVMX_OCT_PCI_IO_SIZE - 1) >> 16, 2);





 octopci_write_config(dev, b, s, f, PCIR_PRIBUS_1, b, 1);
 octopci_write_config(dev, b, s, f, PCIR_SECBUS_1, secbus, 1);
 octopci_write_config(dev, b, s, f, PCIR_SUBBUS_1, 0xff, 1);


 brctl |= PCIB_BCR_SECBUS_RESET;
 octopci_write_config(dev, b, s, f, PCIR_BRIDGECTL_1, brctl, 1);
 DELAY(100000);
 brctl &= ~PCIB_BCR_SECBUS_RESET;
 octopci_write_config(dev, b, s, f, PCIR_BRIDGECTL_1, brctl, 1);


 DELAY(100000);

 secbus = octopci_init_bus(dev, secbus);

 octopci_write_config(dev, b, s, f, PCIR_SUBBUS_1, secbus, 1);

 return (secbus);
}
