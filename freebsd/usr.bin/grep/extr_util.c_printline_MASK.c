#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t boff; size_t dat; size_t len; } ;
struct parsec {size_t matchidx; scalar_t__ printed; TYPE_2__ ln; TYPE_1__* matches; } ;
struct TYPE_4__ {size_t rm_so; size_t rm_eo; } ;
typedef  TYPE_1__ regmatch_t ;

/* Variables and functions */
 char* color ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ matchall ; 
 scalar_t__ oflag ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC5(struct parsec *pc, int sep)
{
	size_t a = 0;
	size_t i, matchidx;
	regmatch_t match;

	/* If matchall, everything matches but don't actually print for -o */
	if (oflag && matchall)
		return;

	matchidx = pc->matchidx;

	/* --color and -o */
	if ((oflag || color) && matchidx > 0) {
		/* Only print metadata once per line if --color */
		if (!oflag && pc->printed == 0)
			FUNC3(&pc->ln, sep);
		for (i = 0; i < matchidx; i++) {
			match = pc->matches[i];
			/* Don't output zero length matches */
			if (match.rm_so == match.rm_eo)
				continue;
			/*
			 * Metadata is printed on a per-line basis, so every
			 * match gets file metadata with the -o flag.
			 */
			if (oflag) {
				pc->ln.boff = match.rm_so;
				FUNC3(&pc->ln, sep);
			} else
				FUNC1(pc->ln.dat + a, match.rm_so - a, 1,
				    stdout);
			if (color)
				FUNC0(stdout, "\33[%sm\33[K", color);
			FUNC1(pc->ln.dat + match.rm_so,
			    match.rm_eo - match.rm_so, 1, stdout);
			if (color)
				FUNC0(stdout, "\33[m\33[K");
			a = match.rm_eo;
			if (oflag)
				FUNC4('\n');
		}
		if (!oflag) {
			if (pc->ln.len - a > 0)
				FUNC1(pc->ln.dat + a, pc->ln.len - a, 1,
				    stdout);
			FUNC4('\n');
		}
	} else
		FUNC2(&pc->ln, sep);
	pc->printed++;
}