
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {scalar_t__ dev_type; } ;


 int ATOM_MBAR23_OFFSET ;
 int ATOM_MBAR45_OFFSET ;
 int ATOM_PBAR2XLAT_OFFSET ;
 int ATOM_PBAR4XLAT_OFFSET ;
 scalar_t__ NTB_DEV_USD ;
 int XEON_B2B_BAR2_ADDR64 ;
 int XEON_B2B_BAR4_ADDR64 ;
 int intel_ntb_reg_write (int,int ,int ) ;

__attribute__((used)) static void
configure_atom_secondary_side_bars(struct ntb_softc *ntb)
{

 if (ntb->dev_type == NTB_DEV_USD) {
  intel_ntb_reg_write(8, ATOM_PBAR2XLAT_OFFSET,
      XEON_B2B_BAR2_ADDR64);
  intel_ntb_reg_write(8, ATOM_PBAR4XLAT_OFFSET,
      XEON_B2B_BAR4_ADDR64);
  intel_ntb_reg_write(8, ATOM_MBAR23_OFFSET, XEON_B2B_BAR2_ADDR64);
  intel_ntb_reg_write(8, ATOM_MBAR45_OFFSET, XEON_B2B_BAR4_ADDR64);
 } else {
  intel_ntb_reg_write(8, ATOM_PBAR2XLAT_OFFSET,
      XEON_B2B_BAR2_ADDR64);
  intel_ntb_reg_write(8, ATOM_PBAR4XLAT_OFFSET,
      XEON_B2B_BAR4_ADDR64);
  intel_ntb_reg_write(8, ATOM_MBAR23_OFFSET, XEON_B2B_BAR2_ADDR64);
  intel_ntb_reg_write(8, ATOM_MBAR45_OFFSET, XEON_B2B_BAR4_ADDR64);
 }
}
