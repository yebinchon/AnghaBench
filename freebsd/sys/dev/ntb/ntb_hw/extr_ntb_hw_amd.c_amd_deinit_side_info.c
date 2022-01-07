
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_softc {int dummy; } ;


 int AMD_SIDEINFO_OFFSET ;
 unsigned int AMD_SIDE_READY ;
 unsigned int amd_ntb_reg_read (int,int ) ;
 int amd_ntb_reg_write (int,int ,unsigned int) ;

__attribute__((used)) static void
amd_deinit_side_info(struct amd_ntb_softc *ntb)
{
 unsigned int reg;

 reg = amd_ntb_reg_read(4, AMD_SIDEINFO_OFFSET);
 if (reg & AMD_SIDE_READY) {
  reg &= ~AMD_SIDE_READY;
  amd_ntb_reg_write(4, AMD_SIDEINFO_OFFSET, reg);
  amd_ntb_reg_read(4, AMD_SIDEINFO_OFFSET);
 }
}
