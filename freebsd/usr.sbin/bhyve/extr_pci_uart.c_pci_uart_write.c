
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int dummy; } ;
struct pci_devinst {int pi_arg; } ;


 int assert (int) ;
 int uart_write (int ,int ,int ) ;

__attribute__((used)) static void
pci_uart_write(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
        int baridx, uint64_t offset, int size, uint64_t value)
{

 assert(baridx == 0);
 assert(size == 1);

 uart_write(pi->pi_arg, offset, value);
}
