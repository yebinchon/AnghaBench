
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int an_state; int an_int; int an_result; int parallel_detect; int an_mutex; scalar_t__ an_start; void* kx_state; void* kr_state; int an_supported; } ;
typedef enum xgbe_an { ____Placeholder_xgbe_an } xgbe_an ;


 int MDIO_AN_INT ;
 int MDIO_AN_INTMASK ;
 int MDIO_MMD_AN ;

 void* XGBE_AN_ERROR ;

 int XGBE_AN_INC_LINK ;
 int XGBE_AN_INT_CMPLT ;
 int XGBE_AN_INT_MASK ;


 int XGBE_AN_PG_RCV ;

 void* XGBE_RX_BPA ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int xgbe_an_incompat_link (struct xgbe_prv_data*) ;
 int xgbe_an_page_received (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_an_state_machine(struct xgbe_prv_data *pdata)
{
 enum xgbe_an cur_state = pdata->an_state;

 sx_xlock(&pdata->an_mutex);

 if (!pdata->an_int)
  goto out;

next_int:
 if (pdata->an_int & XGBE_AN_PG_RCV) {
  pdata->an_state = 129;
  pdata->an_int &= ~XGBE_AN_PG_RCV;
 } else if (pdata->an_int & XGBE_AN_INC_LINK) {
  pdata->an_state = 131;
  pdata->an_int &= ~XGBE_AN_INC_LINK;
 } else if (pdata->an_int & XGBE_AN_INT_CMPLT) {
  pdata->an_state = 132;
  pdata->an_int &= ~XGBE_AN_INT_CMPLT;
 } else {
  pdata->an_state = XGBE_AN_ERROR;
 }

 pdata->an_result = pdata->an_state;

again:
 cur_state = pdata->an_state;

 switch (pdata->an_state) {
 case 128:
  pdata->an_supported = 0;
  break;

 case 129:
  pdata->an_state = xgbe_an_page_received(pdata);
  pdata->an_supported++;
  break;

 case 131:
  pdata->an_supported = 0;
  pdata->parallel_detect = 0;
  pdata->an_state = xgbe_an_incompat_link(pdata);
  break;

 case 132:
  pdata->parallel_detect = pdata->an_supported ? 0 : 1;
  break;

 case 130:
  break;

 default:
  pdata->an_state = XGBE_AN_ERROR;
 }

 if (pdata->an_state == 130) {
  pdata->an_int = 0;
  XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INT, 0);
 } else if (pdata->an_state == XGBE_AN_ERROR) {
  pdata->an_int = 0;
  XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INT, 0);
 }

 if (pdata->an_state >= 132) {
  pdata->an_result = pdata->an_state;
  pdata->an_state = 128;
  pdata->kr_state = XGBE_RX_BPA;
  pdata->kx_state = XGBE_RX_BPA;
  pdata->an_start = 0;
 }

 if (cur_state != pdata->an_state)
  goto again;

 if (pdata->an_int)
  goto next_int;

out:

 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INTMASK, XGBE_AN_INT_MASK);

 sx_xunlock(&pdata->an_mutex);
}
