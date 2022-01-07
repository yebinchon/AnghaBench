
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_io {int pi_width; void* pi_data; void* pi_reg; int pi_sel; } ;


 int O_RDWR ;
 int PCIOCWRITE ;
 int _PATH_DEVPCI ;
 int close (int) ;
 int err (int,char*,...) ;
 int getsel (char const*) ;
 scalar_t__ ioctl (int,int ,struct pci_io*) ;
 int open (int ,int ,int ) ;
 void* strtoul (char const*,char**,int ) ;

__attribute__((used)) static void
writeit(const char *name, const char *reg, const char *data, int width)
{
 int fd;
 struct pci_io pi;

 pi.pi_sel = getsel(name);
 pi.pi_reg = strtoul(reg, (char **)0, 0);
 pi.pi_width = width;
 pi.pi_data = strtoul(data, (char **)0, 0);

 fd = open(_PATH_DEVPCI, O_RDWR, 0);
 if (fd < 0)
  err(1, "%s", _PATH_DEVPCI);

 if (ioctl(fd, PCIOCWRITE, &pi) < 0)
  err(1, "ioctl(PCIOCWRITE)");
 close(fd);
}
