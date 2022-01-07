
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_io {scalar_t__ pi_data; int pi_sel; } ;


 int O_RDWR ;
 int PCIOCATTACHED ;
 int _PATH_DEVPCI ;
 int close (int) ;
 int err (int,char*,...) ;
 int exitstatus ;
 int getsel (char const*) ;
 scalar_t__ ioctl (int,int ,struct pci_io*) ;
 int open (int ,int ,int ) ;
 int printf (char*,char const*,char*,char*) ;

__attribute__((used)) static void
chkattached(const char *name)
{
 int fd;
 struct pci_io pi;

 pi.pi_sel = getsel(name);

 fd = open(_PATH_DEVPCI, O_RDWR, 0);
 if (fd < 0)
  err(1, "%s", _PATH_DEVPCI);

 if (ioctl(fd, PCIOCATTACHED, &pi) < 0)
  err(1, "ioctl(PCIOCATTACHED)");

 exitstatus = pi.pi_data ? 0 : 2;
 printf("%s: %s%s\n", name, pi.pi_data == 0 ? "not " : "", "attached");
 close(fd);
}
