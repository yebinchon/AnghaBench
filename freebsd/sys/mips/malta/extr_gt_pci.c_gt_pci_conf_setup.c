
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gt_pci_softc {int dummy; } ;



__attribute__((used)) static int
gt_pci_conf_setup(struct gt_pci_softc *sc, int bus, int slot, int func,
    int reg, uint32_t *addr)
{
 *addr = (bus << 16) | (slot << 11) | (func << 8) | reg;

 return (0);
}
