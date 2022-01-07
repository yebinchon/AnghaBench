
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct vmctx {int dummy; } ;
struct pci_devinst {int pi_arg; } ;


 int assert (int) ;
 int uart_read (int ,int ) ;

uint64_t
pci_uart_read(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
       int baridx, uint64_t offset, int size)
{
 uint8_t val;

 assert(baridx == 0);
 assert(size == 1);

 val = uart_read(pi->pi_arg, offset);
 return (val);
}
