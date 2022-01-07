
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_devinst {TYPE_1__* pi_bar; int pi_name; } ;
struct mem_range {int arg2; struct pci_devinst* arg1; int handler; int flags; int size; int base; int name; struct pci_devinst* arg; int port; } ;
struct inout_port {int arg2; struct pci_devinst* arg1; int handler; int flags; int size; int base; int name; struct pci_devinst* arg; int port; } ;
struct TYPE_2__ {int type; int size; int addr; } ;


 int EINVAL ;
 int IOPORT_F_INOUT ;
 int MEM_F_RW ;



 int assert (int) ;
 int bzero (struct mem_range*,int) ;
 int pci_emul_io_handler ;
 int pci_emul_mem_handler ;
 int register_inout (struct mem_range*) ;
 int register_mem (struct mem_range*) ;
 int unregister_inout (struct mem_range*) ;
 int unregister_mem (struct mem_range*) ;

__attribute__((used)) static void
modify_bar_registration(struct pci_devinst *pi, int idx, int registration)
{
 int error;
 struct inout_port iop;
 struct mem_range mr;

 switch (pi->pi_bar[idx].type) {
 case 130:
  bzero(&iop, sizeof(struct inout_port));
  iop.name = pi->pi_name;
  iop.port = pi->pi_bar[idx].addr;
  iop.size = pi->pi_bar[idx].size;
  if (registration) {
   iop.flags = IOPORT_F_INOUT;
   iop.handler = pci_emul_io_handler;
   iop.arg = pi;
   error = register_inout(&iop);
  } else
   error = unregister_inout(&iop);
  break;
 case 129:
 case 128:
  bzero(&mr, sizeof(struct mem_range));
  mr.name = pi->pi_name;
  mr.base = pi->pi_bar[idx].addr;
  mr.size = pi->pi_bar[idx].size;
  if (registration) {
   mr.flags = MEM_F_RW;
   mr.handler = pci_emul_mem_handler;
   mr.arg1 = pi;
   mr.arg2 = idx;
   error = register_mem(&mr);
  } else
   error = unregister_mem(&mr);
  break;
 default:
  error = EINVAL;
  break;
 }
 assert(error == 0);
}
