
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int DELAY (int) ;
 int MTL_Q_RQDR ;
 int PRXQ ;
 int RXQSTS ;
 unsigned long XGBE_DMA_STOP_TIMEOUT ;
 scalar_t__ XGMAC_GET_BITS (unsigned int,int ,int ) ;
 unsigned int XGMAC_MTL_IOREAD (struct xgbe_prv_data*,unsigned int,int ) ;
 unsigned long hz ;
 unsigned long ticks ;

__attribute__((used)) static void xgbe_prepare_rx_stop(struct xgbe_prv_data *pdata,
     unsigned int queue)
{
 unsigned int rx_status;
 unsigned long rx_timeout;





 rx_timeout = ticks + (XGBE_DMA_STOP_TIMEOUT * hz);
 while (ticks < rx_timeout) {
  rx_status = XGMAC_MTL_IOREAD(pdata, queue, MTL_Q_RQDR);
  if ((XGMAC_GET_BITS(rx_status, MTL_Q_RQDR, PRXQ) == 0) &&
      (XGMAC_GET_BITS(rx_status, MTL_Q_RQDR, RXQSTS) == 0))
   break;

  DELAY(500);
 }
}
