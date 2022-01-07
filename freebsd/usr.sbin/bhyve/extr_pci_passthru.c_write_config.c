
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcisel {int dummy; } ;
struct pci_io {long pi_reg; int pi_width; int pi_data; struct pcisel pi_sel; } ;
typedef int pi ;


 int PCIOCWRITE ;
 int bzero (struct pci_io*,int) ;
 int ioctl (int ,int ,struct pci_io*) ;
 int pcifd ;

__attribute__((used)) static void
write_config(const struct pcisel *sel, long reg, int width, uint32_t data)
{
 struct pci_io pi;

 bzero(&pi, sizeof(pi));
 pi.pi_sel = *sel;
 pi.pi_reg = reg;
 pi.pi_width = width;
 pi.pi_data = data;

 (void)ioctl(pcifd, PCIOCWRITE, &pi);
}
