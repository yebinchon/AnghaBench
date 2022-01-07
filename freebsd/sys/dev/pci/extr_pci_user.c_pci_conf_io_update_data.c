
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct pci_conf_io32 {int num_matches; int offset; int generation; int status; } ;
struct pci_conf_io {int num_matches; int offset; int generation; int status; } ;
typedef scalar_t__ caddr_t ;







__attribute__((used)) static void
pci_conf_io_update_data(const struct pci_conf_io *cio, caddr_t data,
    u_long cmd)
{
 struct pci_conf_io *d_cio;




 switch (cmd) {
 case 131:



  d_cio = (struct pci_conf_io *)data;
  d_cio->status = cio->status;
  d_cio->generation = cio->generation;
  d_cio->offset = cio->offset;
  d_cio->num_matches = cio->num_matches;
  return;
 default:

  return;
 }
}
