
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;


 int MDIO_CTRL2 ;
 int MDIO_MMD_PCS ;
 unsigned int MDIO_PCS_CTRL2_10GBR ;
 unsigned int MDIO_PCS_CTRL2_TYPE ;
 int XGBE_MODE_KR ;
 int XGBE_MODE_KX ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;

__attribute__((used)) static void xgbe_cur_mode(struct xgbe_prv_data *pdata,
     enum xgbe_mode *mode)
{
 unsigned int reg;

 reg = XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_CTRL2);
 if ((reg & MDIO_PCS_CTRL2_TYPE) == MDIO_PCS_CTRL2_10GBR)
  *mode = XGBE_MODE_KR;
 else
  *mode = XGBE_MODE_KX;
}
