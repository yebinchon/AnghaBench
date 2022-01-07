
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xgbe_prv_data {int dummy; } ;
typedef enum xgbe_rx { ____Placeholder_xgbe_rx } xgbe_rx ;
typedef enum xgbe_an { ____Placeholder_xgbe_an } xgbe_an ;


 scalar_t__ MDIO_AN_XNP ;
 int MDIO_MMD_AN ;
 int XGBE_AN_PAGE_RECEIVED ;
 int XGBE_RX_XNP ;
 int XGBE_XNP_MCF_NULL_MESSAGE ;
 int XGBE_XNP_MP_FORMATTED ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,scalar_t__,int ) ;

__attribute__((used)) static enum xgbe_an xgbe_an_tx_xnp(struct xgbe_prv_data *pdata,
       enum xgbe_rx *state)
{
 u16 msg;

 *state = XGBE_RX_XNP;

 msg = XGBE_XNP_MCF_NULL_MESSAGE;
 msg |= XGBE_XNP_MP_FORMATTED;

 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_XNP + 2, 0);
 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_XNP + 1, 0);
 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_XNP, msg);

 return XGBE_AN_PAGE_RECEIVED;
}
