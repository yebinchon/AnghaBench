
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int device_t ;


 int DEF_CACHE_LINE ;
 int DEF_LATENCY ;
 int FW_DEVICE_PCIO2FW ;
 int FW_VENDORID_SUN ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIM_CMD_MWRICEN ;
 int PCIR_CACHELNSZ ;
 int PCIR_COMMAND ;
 int PCIR_LATTIMER ;
 int device_printf (int ,char*,int,int) ;
 scalar_t__ firewire_debug ;
 int pci_get_devid (int ) ;
 scalar_t__ pci_get_intpin (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_set_intpin (int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
fwohci_pci_init(device_t self)
{
 int olatency, latency, ocache_line, cache_line;
 uint16_t cmd;

 cmd = pci_read_config(self, PCIR_COMMAND, 2);
 cmd |= PCIM_CMD_BUSMASTEREN | PCIM_CMD_MWRICEN;

 cmd &= ~PCIM_CMD_MWRICEN;

 pci_write_config(self, PCIR_COMMAND, cmd, 2);





 if (pci_get_devid(self) == (FW_VENDORID_SUN | FW_DEVICE_PCIO2FW) &&
     pci_get_intpin(self) == 0)
  pci_set_intpin(self, 3);

 latency = olatency = pci_read_config(self, PCIR_LATTIMER, 1);

 if (olatency < 0x20) {
  latency = 0x20;
  pci_write_config(self, PCIR_LATTIMER, latency, 1);
 }

 cache_line = ocache_line = pci_read_config(self, PCIR_CACHELNSZ, 1);

 if (ocache_line < 8) {
  cache_line = 8;
  pci_write_config(self, PCIR_CACHELNSZ, cache_line, 1);
 }

 if (firewire_debug) {
  device_printf(self, "latency timer %d -> %d.\n",
   olatency, latency);
  device_printf(self, "cache size %d -> %d.\n",
   ocache_line, cache_line);
 }

 return 0;
}
