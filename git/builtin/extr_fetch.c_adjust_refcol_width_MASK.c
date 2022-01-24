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
struct ref {TYPE_1__* peer_ref; int /*<<< orphan*/  name; int /*<<< orphan*/  old_oid; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  old_oid; } ;

/* Variables and functions */
 scalar_t__ compact_format ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int refcol_width ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  verbosity ; 

__attribute__((used)) static void FUNC4(const struct ref *ref)
{
	int max, rlen, llen, len;

	/* uptodate lines are only shown on high verbosity level */
	if (!verbosity && FUNC0(&ref->peer_ref->old_oid, &ref->old_oid))
		return;

	max    = FUNC2();
	rlen   = FUNC3(FUNC1(ref->name));

	llen   = FUNC3(FUNC1(ref->peer_ref->name));

	/*
	 * rough estimation to see if the output line is too long and
	 * should not be counted (we can't do precise calculation
	 * anyway because we don't know if the error explanation part
	 * will be printed in update_local_ref)
	 */
	if (compact_format) {
		llen = 0;
		max = max * 2 / 3;
	}
	len = 21 /* flag and summary */ + rlen + 4 /* -> */ + llen;
	if (len >= max)
		return;

	/*
	 * Not precise calculation for compact mode because '*' can
	 * appear on the left hand side of '->' and shrink the column
	 * back.
	 */
	if (refcol_width < rlen)
		refcol_width = rlen;
}