
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcisel {int dummy; } ;
struct pci_io {long pi_reg; int pi_width; int pi_data; struct pcisel pi_sel; } ;


 int PCIOCREAD ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ,struct pci_io*) ;

uint32_t
read_config(int fd, struct pcisel *sel, long reg, int width)
{
 struct pci_io pi;

 pi.pi_sel = *sel;
 pi.pi_reg = reg;
 pi.pi_width = width;

 if (ioctl(fd, PCIOCREAD, &pi) < 0)
  err(1, "ioctl(PCIOCREAD)");

 return (pi.pi_data);
}
