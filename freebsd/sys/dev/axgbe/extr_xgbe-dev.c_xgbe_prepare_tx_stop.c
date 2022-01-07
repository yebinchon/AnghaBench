
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;
struct xgbe_channel {unsigned int queue_index; } ;


 int DELAY (int) ;
 unsigned int DMA_DSR0 ;
 unsigned int DMA_DSR0_TPS_START ;
 unsigned int DMA_DSR1 ;
 unsigned int DMA_DSRX_FIRST_QUEUE ;
 unsigned int DMA_DSRX_INC ;
 unsigned int DMA_DSRX_QPR ;
 unsigned int DMA_DSRX_TPS_START ;
 unsigned int DMA_DSR_Q_WIDTH ;
 int DMA_DSR_TPS_WIDTH ;
 unsigned int DMA_TPS_STOPPED ;
 unsigned int DMA_TPS_SUSPENDED ;
 unsigned int GET_BITS (unsigned int,unsigned int,int ) ;
 unsigned long XGBE_DMA_STOP_TIMEOUT ;
 unsigned int XGMAC_IOREAD (struct xgbe_prv_data*,unsigned int) ;
 unsigned long hz ;
 unsigned long ticks ;

__attribute__((used)) static void xgbe_prepare_tx_stop(struct xgbe_prv_data *pdata,
     struct xgbe_channel *channel)
{
 unsigned int tx_dsr, tx_pos, tx_qidx;
 unsigned int tx_status;
 unsigned long tx_timeout;


 if (channel->queue_index < DMA_DSRX_FIRST_QUEUE) {
  tx_dsr = DMA_DSR0;
  tx_pos = (channel->queue_index * DMA_DSR_Q_WIDTH) +
    DMA_DSR0_TPS_START;
 } else {
  tx_qidx = channel->queue_index - DMA_DSRX_FIRST_QUEUE;

  tx_dsr = DMA_DSR1 + ((tx_qidx / DMA_DSRX_QPR) * DMA_DSRX_INC);
  tx_pos = ((tx_qidx % DMA_DSRX_QPR) * DMA_DSR_Q_WIDTH) +
    DMA_DSRX_TPS_START;
 }





 tx_timeout = ticks + (XGBE_DMA_STOP_TIMEOUT * hz);
 while (ticks < tx_timeout) {
  tx_status = XGMAC_IOREAD(pdata, tx_dsr);
  tx_status = GET_BITS(tx_status, tx_pos, DMA_DSR_TPS_WIDTH);
  if ((tx_status == DMA_TPS_STOPPED) ||
      (tx_status == DMA_TPS_SUSPENDED))
   break;

  DELAY(500);
 }
}
