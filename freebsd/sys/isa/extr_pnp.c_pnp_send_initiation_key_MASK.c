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

/* Variables and functions */
 int /*<<< orphan*/  _PNP_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1()
{
	int cur, i;

	/* Reset the LSFR */
	FUNC0(_PNP_ADDRESS, 0);
	FUNC0(_PNP_ADDRESS, 0); /* yes, we do need it twice! */

	cur = 0x6a;
	FUNC0(_PNP_ADDRESS, cur);

	for (i = 1; i < 32; i++) {
		cur = (cur >> 1) | (((cur ^ (cur >> 1)) << 7) & 0xff);
		FUNC0(_PNP_ADDRESS, cur);
	}
}