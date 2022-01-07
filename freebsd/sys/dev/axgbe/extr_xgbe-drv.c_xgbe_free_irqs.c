
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int channel_count; int dev; struct xgbe_channel* channel; int per_channel_irq; int dev_irq_tag; int dev_irq_res; } ;
struct xgbe_channel {int dma_irq_tag; int dma_irq_res; } ;


 int bus_teardown_intr (int ,int ,int ) ;

__attribute__((used)) static void xgbe_free_irqs(struct xgbe_prv_data *pdata)
{
 struct xgbe_channel *channel;
 unsigned int i;

 bus_teardown_intr(pdata->dev, pdata->dev_irq_res, pdata->dev_irq_tag);

 if (!pdata->per_channel_irq)
  return;

 channel = pdata->channel;
 for (i = 0; i < pdata->channel_count; i++, channel++)
  bus_teardown_intr(pdata->dev, channel->dma_irq_res,
      channel->dma_irq_tag);
}
