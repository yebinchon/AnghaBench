
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct vmctx {int dummy; } ;
struct slotinfo {TYPE_1__* si_funcs; } ;
struct pci_devinst {TYPE_2__* pi_bar; struct pci_devemu* pi_d; } ;
struct pci_devemu {int (* pe_cfgread ) (struct vmctx*,int,struct pci_devinst*,int,int,int*) ;scalar_t__ (* pe_cfgwrite ) (struct vmctx*,int,struct pci_devinst*,int,int,int) ;} ;
struct businfo {struct slotinfo* slotinfo; } ;
struct TYPE_4__ {int size; int type; int addr; } ;
struct TYPE_3__ {struct pci_devinst* fi_devi; } ;


 int CFGREAD (struct pci_devinst*,int,int) ;
 int CFGWRITE (struct pci_devinst*,int,int,int) ;





 int PCIM_BAR_IO_SPACE ;
 int PCIM_BAR_MEM_32 ;
 int PCIM_BAR_MEM_64 ;
 int PCIM_BAR_MEM_PREFETCH ;
 int PCIM_BAR_MEM_SPACE ;
 int PCIR_BAR (scalar_t__) ;
 int PCIR_COMMAND ;
 int PCIR_REVID ;
 scalar_t__ PCI_BARMAX ;
 int PCI_REGMAX ;
 int assert (int ) ;
 struct businfo** pci_businfo ;
 int pci_emul_capwrite (struct pci_devinst*,int,int,int) ;
 int pci_emul_cmdsts_write (struct pci_devinst*,int,int,int) ;
 int pci_emul_hdrtype_fixup (int,int,int,int,int*) ;
 scalar_t__ pci_emul_iscap (struct pci_devinst*,int) ;
 int pci_set_cfgdata32 (struct pci_devinst*,int,int) ;
 int stub1 (struct vmctx*,int,struct pci_devinst*,int,int,int*) ;
 scalar_t__ stub2 (struct vmctx*,int,struct pci_devinst*,int,int,int) ;
 int update_bar_address (struct pci_devinst*,int,int,int const) ;

__attribute__((used)) static void
pci_cfgrw(struct vmctx *ctx, int vcpu, int in, int bus, int slot, int func,
    int coff, int bytes, uint32_t *eax)
{
 struct businfo *bi;
 struct slotinfo *si;
 struct pci_devinst *pi;
 struct pci_devemu *pe;
 int idx, needcfg;
 uint64_t addr, bar, mask;

 if ((bi = pci_businfo[bus]) != ((void*)0)) {
  si = &bi->slotinfo[slot];
  pi = si->si_funcs[func].fi_devi;
 } else
  pi = ((void*)0);





 if (pi == ((void*)0) || (bytes != 1 && bytes != 2 && bytes != 4) ||
     (coff & (bytes - 1)) != 0) {
  if (in)
   *eax = 0xffffffff;
  return;
 }





 if (coff >= PCI_REGMAX + 1) {
  if (in) {
   *eax = 0xffffffff;






   if (coff <= PCI_REGMAX + 4)
    *eax = 0x00000000;
  }
  return;
 }

 pe = pi->pi_d;




 if (in) {

  if (pe->pe_cfgread != ((void*)0)) {
   needcfg = pe->pe_cfgread(ctx, vcpu, pi, coff, bytes,
       eax);
  } else {
   needcfg = 1;
  }

  if (needcfg)
   *eax = CFGREAD(pi, coff, bytes);

  pci_emul_hdrtype_fixup(bus, slot, coff, bytes, eax);
 } else {

  if (pe->pe_cfgwrite != ((void*)0) &&
      (*pe->pe_cfgwrite)(ctx, vcpu, pi, coff, bytes, *eax) == 0)
   return;




  if (coff >= PCIR_BAR(0) && coff < PCIR_BAR(PCI_BARMAX + 1)) {




   if (bytes != 4 || (coff & 0x3) != 0)
    return;
   idx = (coff - PCIR_BAR(0)) / 4;
   mask = ~(pi->pi_bar[idx].size - 1);
   switch (pi->pi_bar[idx].type) {
   case 128:
    pi->pi_bar[idx].addr = bar = 0;
    break;
   case 132:
    addr = *eax & mask;
    addr &= 0xffff;
    bar = addr | PCIM_BAR_IO_SPACE;



    if (addr != pi->pi_bar[idx].addr) {
     update_bar_address(pi, addr, idx,
          132);
    }
    break;
   case 131:
    addr = bar = *eax & mask;
    bar |= PCIM_BAR_MEM_SPACE | PCIM_BAR_MEM_32;
    if (addr != pi->pi_bar[idx].addr) {
     update_bar_address(pi, addr, idx,
          131);
    }
    break;
   case 130:
    addr = bar = *eax & mask;
    bar |= PCIM_BAR_MEM_SPACE | PCIM_BAR_MEM_64 |
           PCIM_BAR_MEM_PREFETCH;
    if (addr != (uint32_t)pi->pi_bar[idx].addr) {
     update_bar_address(pi, addr, idx,
          130);
    }
    break;
   case 129:
    mask = ~(pi->pi_bar[idx - 1].size - 1);
    addr = ((uint64_t)*eax << 32) & mask;
    bar = addr >> 32;
    if (bar != pi->pi_bar[idx - 1].addr >> 32) {
     update_bar_address(pi, addr, idx - 1,
          129);
    }
    break;
   default:
    assert(0);
   }
   pci_set_cfgdata32(pi, coff, bar);

  } else if (pci_emul_iscap(pi, coff)) {
   pci_emul_capwrite(pi, coff, bytes, *eax);
  } else if (coff >= PCIR_COMMAND && coff < PCIR_REVID) {
   pci_emul_cmdsts_write(pi, coff, *eax, bytes);
  } else {
   CFGWRITE(pi, coff, *eax, bytes);
  }
 }
}
