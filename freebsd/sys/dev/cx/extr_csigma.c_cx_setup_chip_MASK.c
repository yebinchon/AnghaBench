#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ cx_chan_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BRD_INTR_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8 (cx_chan_t *c)
{
	/* Reset the chip. */
	FUNC6 (c->port);

	/*
	 * Set all interrupt level registers to the same value.
	 * This enables the internal CD2400 priority scheme.
	 */
	FUNC7 (FUNC3(c->port), BRD_INTR_LEVEL);
	FUNC7 (FUNC4(c->port), BRD_INTR_LEVEL);
	FUNC7 (FUNC2(c->port), BRD_INTR_LEVEL);

	/* Set bus error count to zero. */
	FUNC7 (FUNC0(c->port), 0);

	/* Set 16-bit DMA mode. */
	FUNC7 (FUNC1(c->port), 0);

	/* Set timer period register to 1 msec (approximately). */
	FUNC7 (FUNC5(c->port), 10);
}