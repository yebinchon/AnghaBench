
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* set_gmii_speed ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int * serdes_dfe_tap_ena; int * serdes_dfe_tap_cfg; int * serdes_pq_skew; int * serdes_blwc; int * serdes_tx_amp; int * serdes_cdr_rate; TYPE_1__ hw_if; } ;


 int BLWC_ENA ;
 int CDR_RATE ;
 int DATARATE ;
 int MDIO_CTRL1 ;
 unsigned int MDIO_CTRL1_SPEED1G ;
 unsigned int MDIO_CTRL1_SPEEDSEL ;
 int MDIO_CTRL2 ;
 int MDIO_MMD_PCS ;
 unsigned int MDIO_PCS_CTRL2_10GBX ;
 unsigned int MDIO_PCS_CTRL2_TYPE ;
 int PLLSEL ;
 int PQ_REG ;
 int RXDFE_CONFIG ;
 int RXTX_REG114 ;
 int RXTX_REG129 ;
 int RXTX_REG20 ;
 int RXTX_REG22 ;
 int SIR1_SPEED ;
 int TXAMP ;
 int WORDMODE ;
 size_t XGBE_SPEED_1000 ;
 int XGBE_SPEED_1000_PLL ;
 int XGBE_SPEED_1000_RATE ;
 int XGBE_SPEED_1000_WORD ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,unsigned int) ;
 int XRXTX_IOWRITE (struct xgbe_prv_data*,int ,int ) ;
 int XRXTX_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;
 int XSIR1_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;
 int stub1 (struct xgbe_prv_data*) ;
 int xgbe_an_disable_kr_training (struct xgbe_prv_data*) ;
 int xgbe_pcs_power_cycle (struct xgbe_prv_data*) ;
 int xgbe_serdes_complete_ratechange (struct xgbe_prv_data*) ;
 int xgbe_serdes_start_ratechange (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_gmii_mode(struct xgbe_prv_data *pdata)
{
 unsigned int reg;


 xgbe_an_disable_kr_training(pdata);


 pdata->hw_if.set_gmii_speed(pdata);


 reg = XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_CTRL2);
 reg &= ~MDIO_PCS_CTRL2_TYPE;
 reg |= MDIO_PCS_CTRL2_10GBX;
 XMDIO_WRITE(pdata, MDIO_MMD_PCS, MDIO_CTRL2, reg);

 reg = XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_CTRL1);
 reg &= ~MDIO_CTRL1_SPEEDSEL;
 reg |= MDIO_CTRL1_SPEED1G;
 XMDIO_WRITE(pdata, MDIO_MMD_PCS, MDIO_CTRL1, reg);

 xgbe_pcs_power_cycle(pdata);


 xgbe_serdes_start_ratechange(pdata);

 XSIR1_IOWRITE_BITS(pdata, SIR1_SPEED, DATARATE, XGBE_SPEED_1000_RATE);
 XSIR1_IOWRITE_BITS(pdata, SIR1_SPEED, WORDMODE, XGBE_SPEED_1000_WORD);
 XSIR1_IOWRITE_BITS(pdata, SIR1_SPEED, PLLSEL, XGBE_SPEED_1000_PLL);

 XSIR1_IOWRITE_BITS(pdata, SIR1_SPEED, CDR_RATE,
      pdata->serdes_cdr_rate[XGBE_SPEED_1000]);
 XSIR1_IOWRITE_BITS(pdata, SIR1_SPEED, TXAMP,
      pdata->serdes_tx_amp[XGBE_SPEED_1000]);
 XRXTX_IOWRITE_BITS(pdata, RXTX_REG20, BLWC_ENA,
      pdata->serdes_blwc[XGBE_SPEED_1000]);
 XRXTX_IOWRITE_BITS(pdata, RXTX_REG114, PQ_REG,
      pdata->serdes_pq_skew[XGBE_SPEED_1000]);
 XRXTX_IOWRITE_BITS(pdata, RXTX_REG129, RXDFE_CONFIG,
      pdata->serdes_dfe_tap_cfg[XGBE_SPEED_1000]);
 XRXTX_IOWRITE(pdata, RXTX_REG22,
        pdata->serdes_dfe_tap_ena[XGBE_SPEED_1000]);

 xgbe_serdes_complete_ratechange(pdata);
}
