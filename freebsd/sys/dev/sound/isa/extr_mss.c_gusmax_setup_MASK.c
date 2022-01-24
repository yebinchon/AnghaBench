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
struct resource {int dummy; } ;
struct mss_info {struct resource* conf_base; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 size_t DV_F_DRQ_MASK ; 
 int DV_F_DUAL_DMA ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,int,int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(struct mss_info *mss, device_t dev, struct resource *alt)
{
	static const unsigned char irq_bits[16] = {
		0, 0, 0, 3, 0, 2, 0, 4, 0, 1, 0, 5, 6, 0, 0, 7
	};
	static const unsigned char dma_bits[8] = {
		0, 1, 0, 2, 0, 3, 4, 5
	};
	device_t parent = FUNC1(dev);
	unsigned char irqctl, dmactl;
	int s;

	s = FUNC5();

	FUNC4(alt, 0x0f, 0x05);
	FUNC4(alt, 0x00, 0x0c);
	FUNC4(alt, 0x0b, 0x00);

	FUNC4(alt, 0x0f, 0x00);

	irqctl = irq_bits[FUNC3(parent)];
	/* Share the IRQ with the MIDI driver.  */
	irqctl |= 0x40;
	dmactl = dma_bits[FUNC2(parent)];
	if (FUNC0(parent) & DV_F_DUAL_DMA)
		dmactl |= dma_bits[FUNC0(parent) & DV_F_DRQ_MASK]
		    << 3;

	/*
	 * Set the DMA and IRQ control latches.
	 */
	FUNC4(alt, 0x00, 0x0c);
	FUNC4(alt, 0x0b, dmactl | 0x80);
	FUNC4(alt, 0x00, 0x4c);
	FUNC4(alt, 0x0b, irqctl);

	FUNC4(alt, 0x00, 0x0c);
	FUNC4(alt, 0x0b, dmactl);
	FUNC4(alt, 0x00, 0x4c);
	FUNC4(alt, 0x0b, irqctl);

	FUNC4(mss->conf_base, 2, 0);
	FUNC4(alt, 0x00, 0x0c);
	FUNC4(mss->conf_base, 2, 0);

	FUNC6(s);
}