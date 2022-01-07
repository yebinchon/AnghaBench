
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct TYPE_2__ {int pg_tcs; } ;
struct ixgbe_dcb_config {scalar_t__ vt_mode; TYPE_1__ num_tcs; } ;
typedef int s32 ;


 int ASSERT (int ) ;
 int IXGBE_MRQC ;
 int IXGBE_MRQC_MRQE_MASK ;


 int IXGBE_MRQC_RT8TCEN ;

 int IXGBE_MRQC_RTRSS8TCEN ;
 int IXGBE_MRQC_VMDQRT4TCEN ;
 int IXGBE_MTQC ;
 int IXGBE_MTQC_4TC_4TQ ;
 int IXGBE_MTQC_8TC_8TQ ;
 int IXGBE_MTQC_RT_ENA ;
 int IXGBE_MTQC_VT_ENA ;
 int IXGBE_QDE ;
 int IXGBE_QDE_IDX_SHIFT ;
 int IXGBE_QDE_WRITE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RTTDCS ;
 int IXGBE_RTTDCS_ARBDIS ;
 int IXGBE_SECTXMINIFG ;
 int IXGBE_SECTX_DCB ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

s32 ixgbe_dcb_config_82599(struct ixgbe_hw *hw,
      struct ixgbe_dcb_config *dcb_config)
{
 u32 reg;
 u32 q;


 reg = IXGBE_READ_REG(hw, IXGBE_RTTDCS);
 reg |= IXGBE_RTTDCS_ARBDIS;
 IXGBE_WRITE_REG(hw, IXGBE_RTTDCS, reg);

 reg = IXGBE_READ_REG(hw, IXGBE_MRQC);
 if (dcb_config->num_tcs.pg_tcs == 8) {

  switch (reg & IXGBE_MRQC_MRQE_MASK) {
  case 0:
  case 129:

   reg = (reg & ~IXGBE_MRQC_MRQE_MASK) |
         IXGBE_MRQC_RT8TCEN;
   break;
  case 130:
  case 128:

   reg = (reg & ~IXGBE_MRQC_MRQE_MASK) |
         IXGBE_MRQC_RTRSS8TCEN;
   break;
  default:




   ASSERT(0);
   reg = (reg & ~IXGBE_MRQC_MRQE_MASK) |
         IXGBE_MRQC_RT8TCEN;
  }
 }
 if (dcb_config->num_tcs.pg_tcs == 4) {

  if (dcb_config->vt_mode)
   reg = (reg & ~IXGBE_MRQC_MRQE_MASK) |
         IXGBE_MRQC_VMDQRT4TCEN;
  else
   reg = (reg & ~IXGBE_MRQC_MRQE_MASK) |
         128;
 }
 IXGBE_WRITE_REG(hw, IXGBE_MRQC, reg);


 if (dcb_config->num_tcs.pg_tcs == 8)
  reg = IXGBE_MTQC_RT_ENA | IXGBE_MTQC_8TC_8TQ;
 else {

  reg = IXGBE_MTQC_RT_ENA | IXGBE_MTQC_4TC_4TQ;
  if (dcb_config->vt_mode)
   reg |= IXGBE_MTQC_VT_ENA;
 }
 IXGBE_WRITE_REG(hw, IXGBE_MTQC, reg);


 for (q = 0; q < 128; q++)
  IXGBE_WRITE_REG(hw, IXGBE_QDE,
    (IXGBE_QDE_WRITE | (q << IXGBE_QDE_IDX_SHIFT)));


 reg = IXGBE_READ_REG(hw, IXGBE_RTTDCS);
 reg &= ~IXGBE_RTTDCS_ARBDIS;
 IXGBE_WRITE_REG(hw, IXGBE_RTTDCS, reg);


 reg = IXGBE_READ_REG(hw, IXGBE_SECTXMINIFG);
 reg |= IXGBE_SECTX_DCB;
 IXGBE_WRITE_REG(hw, IXGBE_SECTXMINIFG, reg);

 return IXGBE_SUCCESS;
}
