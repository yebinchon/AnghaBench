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
typedef  int /*<<< orphan*/  u_int ;
struct dmar_unit {int barrier_flags; int /*<<< orphan*/  unit; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BARRIER_F ; 
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int f_done ; 
 int f_inproc ; 
 int f_wakeup ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

bool
FUNC4(struct dmar_unit *dmar, u_int barrier_id)
{
	BARRIER_F;

	FUNC0(dmar);
	if ((dmar->barrier_flags & f_done) != 0) {
		FUNC1(dmar);
		return (false);
	}

	if ((dmar->barrier_flags & f_inproc) != 0) {
		while ((dmar->barrier_flags & f_inproc) != 0) {
			dmar->barrier_flags |= f_wakeup;
			FUNC3(&dmar->barrier_flags, &dmar->lock, 0,
			    "dmarb", 0);
		}
		FUNC2((dmar->barrier_flags & f_done) != 0,
		    ("dmar%d barrier %d missing done", dmar->unit, barrier_id));
		FUNC1(dmar);
		return (false);
	}

	dmar->barrier_flags |= f_inproc;
	FUNC1(dmar);
	return (true);
}