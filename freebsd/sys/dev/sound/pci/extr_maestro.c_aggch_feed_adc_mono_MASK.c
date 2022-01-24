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
struct agg_rchinfo {int phys; int base; unsigned int hwptr; unsigned int buflen; scalar_t__ sink; scalar_t__ src; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  APUREG_CURPTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct agg_rchinfo *ch)
{
	unsigned cur, last;

	FUNC0(ch->parent);
	cur = FUNC3(ch->parent, 0, APUREG_CURPTR);
	FUNC1(ch->parent);
	cur -= 0xffff & ((ch->phys - ch->base) >> 1);
	last = ch->hwptr;

	if (cur < last) {
		FUNC2(ch->src + last, ch->sink + last, ch->buflen - last);
		FUNC2(ch->src, ch->sink, cur);
	} else if (cur > last)
		FUNC2(ch->src + last, ch->sink + last, cur - last);
	ch->hwptr = cur;
}