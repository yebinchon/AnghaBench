#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dumpreg {int type; } ;
struct TYPE_2__ {int nregs; struct dumpreg** regs; int /*<<< orphan*/  revs; } ;
typedef  int /*<<< orphan*/  HAL_REVS ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dumpreg const*,int /*<<< orphan*/  const*) ; 
 TYPE_1__ state ; 

__attribute__((used)) static int
FUNC1(int what)
{
	const HAL_REVS *revs = &state.revs;
	int i;

	for (i = 0; i < state.nregs; i++) {
		const struct dumpreg *dr = state.regs[i];
		if ((what & dr->type) && FUNC0(dr, revs))
			return 1;
	}
	return 0;
}