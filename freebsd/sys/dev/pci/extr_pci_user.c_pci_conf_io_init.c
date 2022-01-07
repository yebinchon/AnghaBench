
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct pci_conf_io32 {int status; int generation; int offset; int matches; int num_matches; int match_buf_len; int patterns; int num_patterns; int pat_buf_len; } ;
struct pci_conf_io {int status; int generation; int offset; void* matches; int num_matches; int match_buf_len; void* patterns; int num_patterns; int pat_buf_len; } ;
typedef scalar_t__ caddr_t ;







__attribute__((used)) static void
pci_conf_io_init(struct pci_conf_io *cio, caddr_t data, u_long cmd)
{




 switch (cmd) {
 case 131:



  *cio = *(struct pci_conf_io *)data;
  return;
 default:

  return;
 }
}
