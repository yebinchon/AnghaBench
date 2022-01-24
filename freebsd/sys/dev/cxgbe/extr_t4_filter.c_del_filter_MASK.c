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
struct TYPE_3__ {scalar_t__ prio; scalar_t__ hash; } ;
struct t4_filter {TYPE_1__ fs; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ftid_tab; int /*<<< orphan*/ * hpftid_tab; int /*<<< orphan*/ * hftid_hash_4t; } ;
struct adapter {int flags; TYPE_2__ tids; } ;

/* Variables and functions */
 int EINVAL ; 
 int FULL_INIT_DONE ; 
 int FUNC0 (struct adapter*,struct t4_filter*) ; 
 int FUNC1 (struct adapter*,struct t4_filter*) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 

int
FUNC3(struct adapter *sc, struct t4_filter *t)
{

	/* No filters possible if not initialized yet. */
	if (!(sc->flags & FULL_INIT_DONE))
		return (EINVAL);

	/*
	 * The checks for tid tables ensure that the locks that del_* will reach
	 * for are initialized.
	 */
	if (t->fs.hash) {
		if (sc->tids.hftid_hash_4t != NULL)
			return (FUNC0(sc, t));
	} else if (FUNC2(sc) && t->fs.prio) {
		if (sc->tids.hpftid_tab != NULL)
			return (FUNC1(sc, t));
	} else {
		if (sc->tids.ftid_tab != NULL)
			return (FUNC1(sc, t));
	}

	return (EINVAL);
}