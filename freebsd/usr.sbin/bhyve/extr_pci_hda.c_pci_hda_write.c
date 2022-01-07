
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int dummy; } ;
struct pci_devinst {struct hda_softc* pi_arg; } ;
struct hda_softc {int dummy; } ;


 int DPRINTF (char*,int ,int ) ;
 int assert (int) ;
 int hda_write (struct hda_softc*,int ,int,int ) ;

__attribute__((used)) static void
pci_hda_write(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
    int baridx, uint64_t offset, int size, uint64_t value)
{
 struct hda_softc *sc = pi->pi_arg;
 int err;

 assert(sc);
 assert(baridx == 0);
 assert(size <= 4);

 DPRINTF("offset: 0x%lx value: 0x%lx\n", offset, value);

 err = hda_write(sc, offset, size, value);
 assert(!err);
}
