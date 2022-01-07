
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct pci_vtscsi_softc {int vss_config; } ;


 int memcpy (int *,void*,int) ;

__attribute__((used)) static int
pci_vtscsi_cfgread(void *vsc, int offset, int size, uint32_t *retval)
{
 struct pci_vtscsi_softc *sc = vsc;
 void *ptr;

 ptr = (uint8_t *)&sc->vss_config + offset;
 memcpy(retval, ptr, size);
 return (0);
}
