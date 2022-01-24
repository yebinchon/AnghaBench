#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dumpreg {int addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  ah_macRev; int /*<<< orphan*/  ah_macVersion; } ;
struct TYPE_4__ {int nregs; struct dumpreg** regs; TYPE_1__ revs; } ;
typedef  TYPE_1__ HAL_REVS ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dumpreg const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ state ; 

__attribute__((used)) static const struct dumpreg *
FUNC1(int reg)
{
	const HAL_REVS *revs = &state.revs;
	int i;

	for (i = 0; i < state.nregs; i++) {
		const struct dumpreg *dr = state.regs[i];
		if (dr->addr == reg &&
		    FUNC0(dr, revs->ah_macVersion, revs->ah_macRev))
			return dr;
	}
	return NULL;
}