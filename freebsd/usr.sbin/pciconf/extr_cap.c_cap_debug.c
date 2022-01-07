
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct pci_conf {int pc_sel; } ;


 int PCIM_DEBUG_PORT_OFFSET ;
 int PCIR_BAR (int) ;
 scalar_t__ PCIR_DEBUG_PORT ;
 int printf (char*,int,int) ;
 int read_config (int,int *,scalar_t__,int) ;

__attribute__((used)) static void
cap_debug(int fd, struct pci_conf *p, uint8_t ptr)
{
 uint16_t debug_port;

 debug_port = read_config(fd, &p->pc_sel, ptr + PCIR_DEBUG_PORT, 2);
 printf("EHCI Debug Port at offset 0x%x in map 0x%x", debug_port &
     PCIM_DEBUG_PORT_OFFSET, PCIR_BAR(debug_port >> 13));
}
