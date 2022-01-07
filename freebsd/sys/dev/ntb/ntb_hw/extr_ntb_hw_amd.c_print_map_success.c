
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct amd_ntb_softc {int dummy; } ;
struct amd_ntb_pci_bar_info {int size; int pbase; scalar_t__ vbase; int pci_resource_id; } ;


 int PCI_RID2BAR (int ) ;
 int amd_ntb_printf (int ,char*,int ,scalar_t__,char*,void*,void*,int ,char const*) ;

__attribute__((used)) static void
print_map_success(struct amd_ntb_softc *ntb, struct amd_ntb_pci_bar_info *bar,
    const char *kind)
{
 amd_ntb_printf(0, "Mapped BAR%d v:[%p-%p] p:[%p-%p] (0x%jx bytes) (%s)\n",
     PCI_RID2BAR(bar->pci_resource_id), bar->vbase,
     (char *)bar->vbase + bar->size - 1, (void *)bar->pbase,
     (void *)(bar->pbase + bar->size - 1), (uintmax_t)bar->size, kind);
}
