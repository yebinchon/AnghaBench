
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int * mac; } ;
struct pci_vtnet_softc {TYPE_1__ vsc_config; } ;


 int DPRINTF (char*) ;
 int assert (int) ;
 int memcpy (void*,int *,int) ;

__attribute__((used)) static int
pci_vtnet_cfgwrite(void *vsc, int offset, int size, uint32_t value)
{
 struct pci_vtnet_softc *sc = vsc;
 void *ptr;

 if (offset < (int)sizeof(sc->vsc_config.mac)) {
  assert(offset + size <= (int)sizeof(sc->vsc_config.mac));



  ptr = &sc->vsc_config.mac[offset];
  memcpy(ptr, &value, size);
 } else {

  DPRINTF(("vtnet: write to readonly reg %d\n\r", offset));
 }

 return (0);
}
