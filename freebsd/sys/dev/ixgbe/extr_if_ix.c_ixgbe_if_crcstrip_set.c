
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ixgbe_hw {int dummy; } ;
struct adapter {struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;


 int D (char*,char*,int ,int ) ;
 int IXGBE_HLREG0 ;
 int IXGBE_HLREG0_RXCRCSTRP ;
 int IXGBE_RDRXCTL ;
 int IXGBE_RDRXCTL_CRCSTRIP ;
 int IXGBE_RDRXCTL_RSCACKC ;
 int IXGBE_RDRXCTL_RSCFRSTSIZE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 struct adapter* iflib_get_softc (int ) ;
 scalar_t__ netmap_verbose ;

__attribute__((used)) static void
ixgbe_if_crcstrip_set(if_ctx_t ctx, int onoff, int crcstrip)
{
 struct adapter *sc = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &sc->hw;
 uint32_t hl, rxc;

 hl = IXGBE_READ_REG(hw, IXGBE_HLREG0);
 rxc = IXGBE_READ_REG(hw, IXGBE_RDRXCTL);






 rxc &= ~IXGBE_RDRXCTL_RSCFRSTSIZE;
 rxc |= IXGBE_RDRXCTL_RSCACKC;
 if (onoff && !crcstrip) {

  hl &= ~IXGBE_HLREG0_RXCRCSTRP;
  rxc &= ~IXGBE_RDRXCTL_CRCSTRIP;
 } else {

  hl |= IXGBE_HLREG0_RXCRCSTRP;
  rxc |= IXGBE_RDRXCTL_CRCSTRIP;
 }





 IXGBE_WRITE_REG(hw, IXGBE_HLREG0, hl);
 IXGBE_WRITE_REG(hw, IXGBE_RDRXCTL, rxc);
}
