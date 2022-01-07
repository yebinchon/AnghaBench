
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
 int hda_read (struct hda_softc*,int ) ;

__attribute__((used)) static uint64_t
pci_hda_read(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
    int baridx, uint64_t offset, int size)
{
 struct hda_softc *sc = pi->pi_arg;
 uint64_t value = 0;

 assert(sc);
 assert(baridx == 0);
 assert(size <= 4);

 value = hda_read(sc, offset);

 DPRINTF("offset: 0x%lx value: 0x%lx\n", offset, value);

 return (value);
}
