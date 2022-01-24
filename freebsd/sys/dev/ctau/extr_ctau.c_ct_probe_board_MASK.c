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
typedef  int port_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned char BSR3_IB ; 
 unsigned char BSR3_IB_NEG ; 
 unsigned char BSR3_ZERO ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  dmatab ; 
 unsigned char FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irqtab ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  porttab ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6 (port_t port, int irq, int dma)
{
	unsigned char sr3, osr3;
	int i;

	if (! FUNC5 (port, porttab))
		return 0;

	if ((irq > 0) && (!FUNC5 (irq, irqtab)))
		return 0;

	if ((dma > 0) && (!FUNC5 (dma, dmatab)))
		return 0;

	osr3 = FUNC3 (FUNC1(port));
	if ((osr3 & (BSR3_IB | BSR3_IB_NEG)) != BSR3_IB &&
	    (osr3 & (BSR3_IB | BSR3_IB_NEG)) != BSR3_IB_NEG)
		return (0);
	for (i=0; i<100; ++i) {
		sr3 = FUNC3 (FUNC1(port));
		if (((sr3 ^ osr3) & (BSR3_IB | BSR3_IB_NEG | BSR3_ZERO)) !=
		    (BSR3_IB | BSR3_IB_NEG))
			return FUNC2 (port);
		osr3 = sr3;
	}
	/* Reset the controller. */
	FUNC4 (FUNC0(port), 0);
	return (1);
}