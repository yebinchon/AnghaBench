#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  icm_page; int /*<<< orphan*/  icm_dma; int /*<<< orphan*/  icm_virt; } ;
struct mthca_dev {TYPE_1__ eq_table; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_HIGHUSER ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct mthca_dev *dev, u64 icm_virt)
{
	int ret;

	/*
	 * We assume that mapping one page is enough for the whole EQ
	 * context table.  This is fine with all current HCAs, because
	 * we only use 32 EQs and each EQ uses 32 bytes of context
	 * memory, or 1 KB total.
	 */
	dev->eq_table.icm_virt = icm_virt;
	dev->eq_table.icm_page = FUNC1(GFP_HIGHUSER);
	if (!dev->eq_table.icm_page)
		return -ENOMEM;
	dev->eq_table.icm_dma  = FUNC4(dev->pdev, dev->eq_table.icm_page, 0,
					      PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
	if (FUNC3(dev->pdev, dev->eq_table.icm_dma)) {
		FUNC0(dev->eq_table.icm_page);
		return -ENOMEM;
	}

	ret = FUNC2(dev, dev->eq_table.icm_dma, icm_virt);
	if (ret) {
		FUNC5(dev->pdev, dev->eq_table.icm_dma, PAGE_SIZE,
			       PCI_DMA_BIDIRECTIONAL);
		FUNC0(dev->eq_table.icm_page);
	}

	return ret;
}