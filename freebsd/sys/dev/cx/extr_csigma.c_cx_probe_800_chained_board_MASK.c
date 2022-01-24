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
typedef  int /*<<< orphan*/  port_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned char BDET_IB ; 
 unsigned char BDET_IB_NEG ; 
 unsigned char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (port_t port)
{
	unsigned char det, odet;
	int i;

	odet = FUNC4 (FUNC3(port));
	if ((odet & (BDET_IB | BDET_IB_NEG)) != BDET_IB &&
	    (odet & (BDET_IB | BDET_IB_NEG)) != BDET_IB_NEG)
		return (0);
	for (i=0; i<100; ++i) {
		det = FUNC4 (FUNC3(port));
		if (((det ^ odet) & (BDET_IB | BDET_IB_NEG)) !=
		    (BDET_IB | BDET_IB_NEG))
			return (0);
		odet = det;
	}
	/* Reset the controller. */
	FUNC5 (FUNC0(port), 0);
	FUNC5 (FUNC1(port), 0);
	FUNC5 (FUNC2(port), 0);
	return (1);
}