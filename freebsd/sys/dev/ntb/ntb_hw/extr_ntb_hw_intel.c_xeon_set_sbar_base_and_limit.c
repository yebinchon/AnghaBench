
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct ntb_softc {scalar_t__ b2b_off; } ;
typedef enum ntb_bar { ____Placeholder_ntb_bar } ntb_bar ;


 int bar_get_xlat_params (struct ntb_softc*,int,int *,int *,int *) ;
 int bar_is_64bit (struct ntb_softc*,int) ;
 int intel_ntb_reg_read (int,int ) ;
 int intel_ntb_reg_write (int,int ,int ) ;

__attribute__((used)) static void
xeon_set_sbar_base_and_limit(struct ntb_softc *ntb, uint64_t bar_addr,
    enum ntb_bar idx, enum ntb_bar regbar)
{
 uint64_t reg_val;
 uint32_t base_reg, lmt_reg;

 bar_get_xlat_params(ntb, idx, &base_reg, ((void*)0), &lmt_reg);
 if (idx == regbar) {
  if (ntb->b2b_off)
   bar_addr += ntb->b2b_off;
  else
   bar_addr = 0;
 }

 if (!bar_is_64bit(ntb, idx)) {
  intel_ntb_reg_write(4, base_reg, bar_addr);
  reg_val = intel_ntb_reg_read(4, base_reg);
  (void)reg_val;

  intel_ntb_reg_write(4, lmt_reg, bar_addr);
  reg_val = intel_ntb_reg_read(4, lmt_reg);
  (void)reg_val;
 } else {
  intel_ntb_reg_write(8, base_reg, bar_addr);
  reg_val = intel_ntb_reg_read(8, base_reg);
  (void)reg_val;

  intel_ntb_reg_write(8, lmt_reg, bar_addr);
  reg_val = intel_ntb_reg_read(8, lmt_reg);
  (void)reg_val;
 }
}
