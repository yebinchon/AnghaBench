
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int channel_count; int dev_irq_tag; int dev_irq_res; int dev; int dma_irq_tag; int dma_irq_res; struct xgbe_prv_data* channel; int per_channel_irq; } ;
struct xgbe_channel {unsigned int channel_count; int dev_irq_tag; int dev_irq_res; int dev; int dma_irq_tag; int dma_irq_res; struct xgbe_channel* channel; int per_channel_irq; } ;


 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct xgbe_prv_data*,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int xgbe_dma_isr ;
 int xgbe_isr ;

__attribute__((used)) static int xgbe_request_irqs(struct xgbe_prv_data *pdata)
{
 struct xgbe_channel *channel;
 unsigned int i;
 int ret;

 ret = bus_setup_intr(pdata->dev, pdata->dev_irq_res,
     INTR_MPSAFE | INTR_TYPE_NET, ((void*)0), xgbe_isr, pdata,
     &pdata->dev_irq_tag);
 if (ret) {
  return ret;
 }

 if (!pdata->per_channel_irq)
  return 0;

 channel = pdata->channel;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  ret = bus_setup_intr(pdata->dev, channel->dma_irq_res,
      INTR_MPSAFE | INTR_TYPE_NET, ((void*)0), xgbe_dma_isr, channel,
      &channel->dma_irq_tag);
  if (ret != 0) {
   goto err_irq;
  }
 }

 return 0;

err_irq:

 for (i--, channel--; i < pdata->channel_count; i--, channel--)
  bus_teardown_intr(pdata->dev, channel->dma_irq_res,
      channel->dma_irq_tag);

 bus_teardown_intr(pdata->dev, pdata->dev_irq_res, pdata->dev_irq_tag);

 return -ret;
}
