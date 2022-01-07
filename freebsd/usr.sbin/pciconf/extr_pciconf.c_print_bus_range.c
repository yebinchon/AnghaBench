
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pci_conf {int pc_sel; } ;


 int printf (char*,int,int) ;
 int read_config (int,int *,int,int) ;

__attribute__((used)) static void
print_bus_range(int fd, struct pci_conf *p, int secreg, int subreg)
{
 uint8_t secbus, subbus;

 secbus = read_config(fd, &p->pc_sel, secreg, 1);
 subbus = read_config(fd, &p->pc_sel, subreg, 1);
 printf("    bus range  = %u-%u\n", secbus, subbus);
}
