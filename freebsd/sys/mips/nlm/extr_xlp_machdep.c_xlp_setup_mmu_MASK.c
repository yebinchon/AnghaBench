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
typedef  unsigned int uint32_t ;

/* Variables and functions */
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static void
FUNC7(void)
{
	uint32_t pagegrain;

	if (FUNC6() == 0) {
		FUNC5(0);
		FUNC3(1);
		FUNC2(1);
		FUNC4(0, 0, 0);
	}

	/* Enable no-read, no-exec, large-physical-address */
	pagegrain = FUNC0();
	pagegrain |= (1U << 31)	|	/* RIE */
	    (1 << 30)		|	/* XIE */
	    (1 << 29);			/* ELPA */
	FUNC1(pagegrain);
}