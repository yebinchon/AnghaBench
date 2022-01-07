
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcisel {int dummy; } ;
struct pci_io {long pi_reg; int pi_width; int pi_data; struct pcisel pi_sel; } ;
typedef int pi ;


 int PCIOCREAD ;
 int bzero (struct pci_io*,int) ;
 scalar_t__ ioctl (int ,int ,struct pci_io*) ;
 int pcifd ;

__attribute__((used)) static uint32_t
read_config(const struct pcisel *sel, long reg, int width)
{
 struct pci_io pi;

 bzero(&pi, sizeof(pi));
 pi.pi_sel = *sel;
 pi.pi_reg = reg;
 pi.pi_width = width;

 if (ioctl(pcifd, PCIOCREAD, &pi) < 0)
  return (0);
 else
  return (pi.pi_data);
}
