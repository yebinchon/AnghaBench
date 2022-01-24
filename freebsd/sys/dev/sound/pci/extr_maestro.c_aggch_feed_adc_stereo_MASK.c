#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct agg_rchinfo {int srcphys; int base; unsigned int hwptr; int buflen; scalar_t__ sink; int /*<<< orphan*/ * src; TYPE_1__* parent; } ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_4__ {int bufsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  APUREG_CURPTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,unsigned int) ; 
 unsigned int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct agg_rchinfo *ch)
{
	unsigned cur, last;
	int16_t *src2;

	FUNC0(ch->parent);
	cur = FUNC3(ch->parent, 0, APUREG_CURPTR);
	FUNC1(ch->parent);
	cur -= 0xffff & ((ch->srcphys - ch->base) >> 1);
	last = ch->hwptr;
	src2 = ch->src + ch->parent->bufsz/4;

	if (cur < last) {
		FUNC2(ch->src + last, src2 + last,
			   ch->sink + 2*last, ch->buflen/2 - last);
		FUNC2(ch->src, src2,
			   ch->sink, cur);
	} else if (cur > last)
		FUNC2(ch->src + last, src2 + last,
			   ch->sink + 2*last, cur - last);
	ch->hwptr = cur;
}