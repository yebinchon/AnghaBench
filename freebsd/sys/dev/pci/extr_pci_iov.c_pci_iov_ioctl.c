
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct pci_iov_schema {int dummy; } ;
struct pci_iov_arg {int dummy; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;



 int pci_iov_config (struct cdev*,struct pci_iov_arg*) ;
 int pci_iov_delete (struct cdev*) ;
 int pci_iov_get_schema_ioctl (struct cdev*,struct pci_iov_schema*) ;

__attribute__((used)) static int
pci_iov_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag,
    struct thread *td)
{

 switch (cmd) {
 case 130:
  return (pci_iov_config(dev, (struct pci_iov_arg *)data));
 case 129:
  return (pci_iov_delete(dev));
 case 128:
  return (pci_iov_get_schema_ioctl(dev,
      (struct pci_iov_schema *)data));
 default:
  return (EINVAL);
 }
}
