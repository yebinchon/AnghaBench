
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct pci_conf_old32 {int dummy; } ;
struct pci_conf_old {int dummy; } ;
struct pci_conf32 {int dummy; } ;
struct pci_conf {int dummy; } ;







__attribute__((used)) static size_t
pci_conf_size(u_long cmd)
{

 switch (cmd) {
 case 131:
  return (sizeof(struct pci_conf));
 default:

  return (0);
 }
}
