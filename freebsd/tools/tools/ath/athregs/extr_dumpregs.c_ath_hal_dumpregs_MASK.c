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
struct dumpreg {int type; int addr; int /*<<< orphan*/ * name; } ;
struct TYPE_2__ {int nregs; scalar_t__ show_addrs; scalar_t__ show_names; struct dumpreg** regs; int /*<<< orphan*/  revs; } ;
typedef  int /*<<< orphan*/  HAL_REVS ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ah ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (struct dumpreg const*,int /*<<< orphan*/  const*) ; 
 TYPE_1__ state ; 

__attribute__((used)) static void
FUNC3(FILE *fd, int what)
{
	const HAL_REVS *revs = &state.revs;
	const char *sep = "";
	int i, count, itemsperline;

	count = 0;
	itemsperline = 4;
	if (state.show_names && state.show_addrs)
		itemsperline--;
	for (i = 0; i < state.nregs; i++) {
		const struct dumpreg *dr = state.regs[i];
		if ((what & dr->type) && FUNC2(dr, revs)) {
			if (state.show_names && dr->name != NULL) {
				FUNC1(fd, "%s%-8s", sep, dr->name);
				if (state.show_addrs)
					FUNC1(fd, " [%04x]", dr->addr);
			} else
				FUNC1(fd, "%s%04x", sep, dr->addr);
			FUNC1(fd, " %08x", FUNC0(ah, dr->addr));
			sep = " ";
			if ((++count % itemsperline) == 0)
				sep = "\n";
		}
	}
	if (count)
		FUNC1(fd, "\n");
}