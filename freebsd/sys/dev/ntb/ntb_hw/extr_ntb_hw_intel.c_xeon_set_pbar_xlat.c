
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ntb_softc {struct ntb_pci_bar_info* bar_info; } ;
struct ntb_pci_bar_info {int pbarxlat_off; } ;
typedef enum ntb_bar { ____Placeholder_ntb_bar } ntb_bar ;


 scalar_t__ HAS_FEATURE (struct ntb_softc*,int ) ;
 int NTB_B2B_BAR_2 ;
 int NTB_SPLIT_BAR ;
 int intel_ntb_reg_read (int,int ) ;
 int intel_ntb_reg_write (int,int ,int ) ;

__attribute__((used)) static void
xeon_set_pbar_xlat(struct ntb_softc *ntb, uint64_t base_addr, enum ntb_bar idx)
{
 struct ntb_pci_bar_info *bar;

 bar = &ntb->bar_info[idx];
 if (HAS_FEATURE(ntb, NTB_SPLIT_BAR) && idx >= NTB_B2B_BAR_2) {
  intel_ntb_reg_write(4, bar->pbarxlat_off, base_addr);
  base_addr = intel_ntb_reg_read(4, bar->pbarxlat_off);
 } else {
  intel_ntb_reg_write(8, bar->pbarxlat_off, base_addr);
  base_addr = intel_ntb_reg_read(8, bar->pbarxlat_off);
 }
 (void)base_addr;
}
