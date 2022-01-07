
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_conf {int pc_hdr; } ;


 int PCIM_HDRTYPE ;


 int PCIR_SECBUS_1 ;
 int PCIR_SECBUS_2 ;
 int PCIR_SUBBUS_1 ;
 int PCIR_SUBBUS_2 ;
 int print_bridge_windows (int,struct pci_conf*) ;
 int print_bus_range (int,struct pci_conf*,int ,int ) ;
 int print_cardbus_windows (int,struct pci_conf*) ;

__attribute__((used)) static void
list_bridge(int fd, struct pci_conf *p)
{

 switch (p->pc_hdr & PCIM_HDRTYPE) {
 case 129:
  print_bus_range(fd, p, PCIR_SECBUS_1, PCIR_SUBBUS_1);
  print_bridge_windows(fd, p);
  break;
 case 128:
  print_bus_range(fd, p, PCIR_SECBUS_2, PCIR_SUBBUS_2);
  print_cardbus_windows(fd, p);
  break;
 }
}
