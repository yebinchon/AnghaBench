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
struct sc_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMPCI_REG_MISC ; 
 int /*<<< orphan*/  CMPCI_REG_POWER_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct sc_info *sc, int state)
{
	switch (state) {
	case 0: /* full power */
		FUNC0(sc, CMPCI_REG_MISC, CMPCI_REG_POWER_DOWN);
		break;
	default:
		/* power off */
		FUNC1(sc, CMPCI_REG_MISC, CMPCI_REG_POWER_DOWN);
		break;
	}
}