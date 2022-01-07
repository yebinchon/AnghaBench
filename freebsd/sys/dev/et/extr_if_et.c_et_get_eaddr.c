
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int device_t ;


 int ETHER_ADDR_LEN ;
 int ET_PCIR_MAC_ADDR0 ;
 int ET_PCIR_MAC_ADDR1 ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static void
et_get_eaddr(device_t dev, uint8_t eaddr[])
{
 uint32_t val;
 int i;

 val = pci_read_config(dev, ET_PCIR_MAC_ADDR0, 4);
 for (i = 0; i < 4; ++i)
  eaddr[i] = (val >> (8 * i)) & 0xff;

 val = pci_read_config(dev, ET_PCIR_MAC_ADDR1, 2);
 for (; i < ETHER_ADDR_LEN; ++i)
  eaddr[i] = (val >> (8 * (i - 4))) & 0xff;
}
