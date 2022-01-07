
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_10GBR_PMD_CTRL ;
 unsigned int XGBE_KR_TRAINING_ENABLE ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,unsigned int) ;

__attribute__((used)) static void xgbe_an_enable_kr_training(struct xgbe_prv_data *pdata)
{
 unsigned int reg;

 reg = XMDIO_READ(pdata, MDIO_MMD_PMAPMD, MDIO_PMA_10GBR_PMD_CTRL);

 reg |= XGBE_KR_TRAINING_ENABLE;
 XMDIO_WRITE(pdata, MDIO_MMD_PMAPMD, MDIO_PMA_10GBR_PMD_CTRL, reg);
}
