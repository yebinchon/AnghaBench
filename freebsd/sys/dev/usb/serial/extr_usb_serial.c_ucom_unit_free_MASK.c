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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int UCOM_UNIT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * ucom_unrhdr ; 

__attribute__((used)) static void
FUNC2(int unit)
{
	/* sanity checks */
	if (unit < 0 || unit >= UCOM_UNIT_MAX || ucom_unrhdr == NULL) {
		FUNC0("cannot free unit number\n");
		return;
	}
	FUNC0("unit %d is freed\n", unit);
	FUNC1(ucom_unrhdr, unit);
}