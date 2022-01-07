
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;
typedef enum xgbe_rx { ____Placeholder_xgbe_rx } xgbe_rx ;
typedef enum xgbe_an { ____Placeholder_xgbe_an } xgbe_an ;


 int MDIO_AN_LPX ;
 int MDIO_AN_XNP ;
 int MDIO_MMD_AN ;
 unsigned int XGBE_XNP_NP_EXCHANGE ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int xgbe_an_tx_training (struct xgbe_prv_data*,int*) ;
 int xgbe_an_tx_xnp (struct xgbe_prv_data*,int*) ;

__attribute__((used)) static enum xgbe_an xgbe_an_rx_xnp(struct xgbe_prv_data *pdata,
       enum xgbe_rx *state)
{
 unsigned int ad_reg, lp_reg;


 ad_reg = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_XNP);
 lp_reg = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_LPX);

 return ((ad_reg & XGBE_XNP_NP_EXCHANGE) ||
  (lp_reg & XGBE_XNP_NP_EXCHANGE))
        ? xgbe_an_tx_xnp(pdata, state)
        : xgbe_an_tx_training(pdata, state);
}
