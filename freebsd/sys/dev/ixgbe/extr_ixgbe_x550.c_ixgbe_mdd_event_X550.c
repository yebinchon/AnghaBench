
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_MRQC ;
 int IXGBE_MRQC_MRQE_MASK ;



 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WQBR_RX (int) ;
 int IXGBE_WQBR_TX (int) ;

void ixgbe_mdd_event_X550(struct ixgbe_hw *hw, u32 *vf_bitmap)
{
 u32 wqbr;
 u32 i, j, reg, q, shift, vf, idx;

 DEBUGFUNC("ixgbe_mdd_event_X550");


 reg = IXGBE_READ_REG(hw, IXGBE_MRQC);
 switch (reg & IXGBE_MRQC_MRQE_MASK) {
 case 128:
  shift = 3;
  break;
 case 130:
 case 129:
  shift = 2;
  break;
 default:
  shift = 1;
  break;
 }


 for (i = 0; i < 4; i++) {
  wqbr = IXGBE_READ_REG(hw, IXGBE_WQBR_TX(i));
  wqbr |= IXGBE_READ_REG(hw, IXGBE_WQBR_RX(i));

  if (!wqbr)
   continue;


  for (j = 0; j < 32 && wqbr; j++) {

   if (!(wqbr & (1 << j)))
    continue;


   q = j + (i * 32);


   vf = (q >> shift);


   idx = vf / 32;
   vf_bitmap[idx] |= (1 << (vf % 32));
   wqbr &= ~(1 << j);
  }
 }
}
