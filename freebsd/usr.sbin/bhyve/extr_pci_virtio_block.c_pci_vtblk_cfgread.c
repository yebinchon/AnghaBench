
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct pci_vtblk_softc {int vbsc_cfg; } ;


 int memcpy (int *,void*,int) ;

__attribute__((used)) static int
pci_vtblk_cfgread(void *vsc, int offset, int size, uint32_t *retval)
{
 struct pci_vtblk_softc *sc = vsc;
 void *ptr;


 ptr = (uint8_t *)&sc->vbsc_cfg + offset;
 memcpy(retval, ptr, size);
 return (0);
}
