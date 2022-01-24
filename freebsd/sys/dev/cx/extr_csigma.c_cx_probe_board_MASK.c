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
 int /*<<< orphan*/  BCR0_NORESET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int BSR_NOCHAIN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmatab ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irqtab ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  porttab ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

int FUNC12 (port_t port, int irq, int dma)
{
	int c0, c1, c2=0, c3=0, result;

	if (! FUNC11 (port, porttab))
		return 0;

	if (irq > 0 && ! FUNC11 (irq, irqtab))
		return 0;

	if (dma > 0 && ! FUNC11 (dma, dmatab))
		return 0;

	if (FUNC6 (port)) {
		/* Sigma-800 detected. */
		if (! (FUNC9 (FUNC1(port)) & BSR_NOCHAIN)) {
			/* chained board attached */
			if (! FUNC6 (port+0x10))
				/* invalid chained board? */
				return (0);
			if (! (FUNC9 (FUNC1(port+0x10)) & BSR_NOCHAIN))
				/* invalid chained board flag? */
				return (0);
		}
		return 1;
	}
	if (FUNC7 (port, &c0, &c1)) {
		/* Sigma-XXX detected. */
		if (! (FUNC9 (FUNC1(port)) & BSR_NOCHAIN)) {
			/* chained board attached */
			if (! FUNC7 (port+0x10, &c2, &c3))
				/* invalid chained board? */
				return (0);
			if (! (FUNC9 (FUNC1(port+0x10)) & BSR_NOCHAIN))
				/* invalid chained board flag? */
				return (0);
		}
	} else if (FUNC5 (port)) {
		c0 = 1;		/* Sigma-2x detected. */
		c1 = 0;
	} else
		return (0);     /* no board detected */

	/* Turn off the reset bit. */
	FUNC10 (FUNC0(port), BCR0_NORESET);
	if (c2 || c3)
		FUNC10 (FUNC0(port + 0x10), BCR0_NORESET);

	result = 1;
	if (c0 && ! FUNC8 (FUNC2(port)))
		result = 0;	/* no CD2400 chip here */
	else if (c1 && ! FUNC8 (FUNC4(port)) &&
	    ! FUNC8 (FUNC3(port)))
		result = 0;	/* no second CD2400 chip */
	else if (c2 && ! FUNC8 (FUNC2(port + 0x10)))
		result = 0;	/* no CD2400 chip on the slave board */
	else if (c3 && ! FUNC8 (FUNC3(port + 0x10)))
		result = 0;	/* no second CD2400 chip on the slave board */

	/* Reset the controller. */
	FUNC10 (FUNC0(port), 0);
	if (c2 || c3)
		FUNC10 (FUNC0(port + 0x10), 0);

	/* Yes, we really have valid Sigma board. */
	return (result);
}