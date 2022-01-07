
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int dummy; } ;
struct pci_devinst {int dummy; } ;



__attribute__((used)) static uint64_t
pci_lpc_read(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
       int baridx, uint64_t offset, int size)
{
 return (0);
}
