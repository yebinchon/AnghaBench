
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct pci_match_conf_old32 {int dummy; } ;
struct pci_match_conf_old {int dummy; } ;
struct pci_match_conf32 {int dummy; } ;
struct pci_match_conf {int dummy; } ;
struct pci_conf {int dummy; } ;






 int pci_conf_match32 (struct pci_match_conf32*,int,struct pci_conf*) ;
 int pci_conf_match_native (struct pci_match_conf*,int,struct pci_conf*) ;
 int pci_conf_match_old (struct pci_match_conf_old*,int,struct pci_conf*) ;
 int pci_conf_match_old32 (struct pci_match_conf_old32*,int,struct pci_conf*) ;

__attribute__((used)) static int
pci_conf_match(u_long cmd, struct pci_match_conf *matches, int num_matches,
    struct pci_conf *match_buf)
{

 switch (cmd) {
 case 131:
  return (pci_conf_match_native(
      (struct pci_match_conf *)matches, num_matches, match_buf));
 default:

  return (0);
 }
}
