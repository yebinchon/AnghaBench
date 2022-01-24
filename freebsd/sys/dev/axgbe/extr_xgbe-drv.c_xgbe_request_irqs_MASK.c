#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xgbe_prv_data {unsigned int channel_count; int /*<<< orphan*/  dev_irq_tag; int /*<<< orphan*/  dev_irq_res; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_irq_tag; int /*<<< orphan*/  dma_irq_res; struct xgbe_prv_data* channel; int /*<<< orphan*/  per_channel_irq; } ;
struct xgbe_channel {unsigned int channel_count; int /*<<< orphan*/  dev_irq_tag; int /*<<< orphan*/  dev_irq_res; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_irq_tag; int /*<<< orphan*/  dma_irq_res; struct xgbe_channel* channel; int /*<<< orphan*/  per_channel_irq; } ;

/* Variables and functions */
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct xgbe_prv_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xgbe_dma_isr ; 
 int /*<<< orphan*/  xgbe_isr ; 

__attribute__((used)) static int FUNC2(struct xgbe_prv_data *pdata)
{
	struct xgbe_channel *channel;
	unsigned int i;
	int ret;

	ret = FUNC0(pdata->dev, pdata->dev_irq_res,
	    INTR_MPSAFE | INTR_TYPE_NET, NULL, xgbe_isr, pdata,
	    &pdata->dev_irq_tag);
	if (ret) {
		return ret;
	}

	if (!pdata->per_channel_irq)
		return 0;

	channel = pdata->channel;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		ret = FUNC0(pdata->dev, channel->dma_irq_res,
		    INTR_MPSAFE | INTR_TYPE_NET, NULL, xgbe_dma_isr, channel,
		    &channel->dma_irq_tag);
		if (ret != 0) {
			goto err_irq;
		}
	}

	return 0;

err_irq:
	/* Using an unsigned int, 'i' will go to UINT_MAX and exit */
	for (i--, channel--; i < pdata->channel_count; i--, channel--)
		FUNC1(pdata->dev, channel->dma_irq_res,
		    channel->dma_irq_tag);

	FUNC1(pdata->dev, pdata->dev_irq_res, pdata->dev_irq_tag);

	return -ret;
}