
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct pci_conf {int pc_sel; } ;


 scalar_t__ PCIR_SUBVENDCAP_ID ;
 int printf (char*,int,int) ;
 int read_config (int,int *,scalar_t__,int) ;

__attribute__((used)) static void
cap_subvendor(int fd, struct pci_conf *p, uint8_t ptr)
{
 uint32_t id;
 uint16_t ssid, ssvid;

 id = read_config(fd, &p->pc_sel, ptr + PCIR_SUBVENDCAP_ID, 4);
 ssid = id >> 16;
 ssvid = id & 0xffff;
 printf("PCI Bridge subvendor=0x%04x subdevice=0x%04x", ssvid, ssid);
}
