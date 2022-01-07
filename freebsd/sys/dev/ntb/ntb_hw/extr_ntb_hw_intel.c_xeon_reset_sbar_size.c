
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ntb_softc {scalar_t__ b2b_off; int device; struct ntb_pci_bar_info* bar_info; } ;
struct ntb_pci_bar_info {int ssz_off; int psz_off; } ;
typedef enum ntb_bar { ____Placeholder_ntb_bar } ntb_bar ;


 int HAS_FEATURE (struct ntb_softc*,int ) ;
 int NTB_B2B_BAR_3 ;
 int NTB_SPLIT_BAR ;
 scalar_t__ pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,scalar_t__,int) ;

__attribute__((used)) static void
xeon_reset_sbar_size(struct ntb_softc *ntb, enum ntb_bar idx,
    enum ntb_bar regbar)
{
 struct ntb_pci_bar_info *bar;
 uint8_t bar_sz;

 if (!HAS_FEATURE(ntb, NTB_SPLIT_BAR) && idx >= NTB_B2B_BAR_3)
  return;

 bar = &ntb->bar_info[idx];
 bar_sz = pci_read_config(ntb->device, bar->psz_off, 1);
 if (idx == regbar) {
  if (ntb->b2b_off != 0)
   bar_sz--;
  else
   bar_sz = 0;
 }
 pci_write_config(ntb->device, bar->ssz_off, bar_sz, 1);
 bar_sz = pci_read_config(ntb->device, bar->ssz_off, 1);
 (void)bar_sz;
}
