
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmctx {int dummy; } ;
struct pci_devinst {int dummy; } ;


 int pci_set_cfgdata8 (struct pci_devinst*,int,int ) ;
 int pirq_read (int) ;
 int pirq_write (struct vmctx*,int,int ) ;

__attribute__((used)) static int
pci_lpc_cfgwrite(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
    int coff, int bytes, uint32_t val)
{
 int pirq_pin;

 if (bytes == 1) {
  pirq_pin = 0;
  if (coff >= 0x60 && coff <= 0x63)
   pirq_pin = coff - 0x60 + 1;
  if (coff >= 0x68 && coff <= 0x6b)
   pirq_pin = coff - 0x68 + 5;
  if (pirq_pin != 0) {
   pirq_write(ctx, pirq_pin, val);
   pci_set_cfgdata8(pi, coff, pirq_read(pirq_pin));
   return (0);
  }
 }
 return (-1);
}
