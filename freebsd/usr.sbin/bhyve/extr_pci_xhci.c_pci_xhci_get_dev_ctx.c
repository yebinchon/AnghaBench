
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
struct xhci_dev_ctx {int dummy; } ;
struct TYPE_3__ {TYPE_2__* dcbaa_p; } ;
struct pci_xhci_softc {size_t ndevices; TYPE_1__ opregs; } ;
struct TYPE_4__ {int* dcba; } ;


 int DPRINTF (char*) ;
 struct xhci_dev_ctx* XHCI_GADDR (struct pci_xhci_softc*,int) ;
 int assert (int) ;

struct xhci_dev_ctx *
pci_xhci_get_dev_ctx(struct pci_xhci_softc *sc, uint32_t slot)
{
 uint64_t devctx_addr;
 struct xhci_dev_ctx *devctx;

 assert(slot > 0 && slot <= sc->ndevices);
 assert(sc->opregs.dcbaa_p != ((void*)0));

 devctx_addr = sc->opregs.dcbaa_p->dcba[slot];

 if (devctx_addr == 0) {
  DPRINTF(("get_dev_ctx devctx_addr == 0\r\n"));
  return (((void*)0));
 }

 DPRINTF(("pci_xhci: get dev ctx, slot %u devctx addr %016lx\r\n",
         slot, devctx_addr));
 devctx = XHCI_GADDR(sc, devctx_addr & ~0x3FUL);

 return (devctx);
}
