
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {scalar_t__ an_int; } ;


 int MDIO_AN_INT ;
 int MDIO_AN_INTMASK ;
 int MDIO_MMD_AN ;
 scalar_t__ XGBE_AN_INT_MASK ;
 scalar_t__ XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,scalar_t__) ;
 int xgbe_an_state_machine (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_an_isr(void *data)
{
 struct xgbe_prv_data *pdata = (struct xgbe_prv_data *)data;


 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INTMASK, 0);


 pdata->an_int = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_INT);

 if (pdata->an_int) {

  XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INT, ~pdata->an_int);

  xgbe_an_state_machine(pdata);
 } else {

  XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INTMASK,
       XGBE_AN_INT_MASK);
 }
}
