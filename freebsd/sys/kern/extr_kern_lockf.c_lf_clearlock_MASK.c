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
struct lockf_entry {scalar_t__ lf_type; } ;
struct lockf {int /*<<< orphan*/  ls_active; } ;

/* Variables and functions */
 scalar_t__ F_UNLCK ; 
 struct lockf_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 struct lockf_entry* NOLOCKF ; 
 int /*<<< orphan*/  FUNC1 (struct lockf*,struct lockf_entry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct lockf_entry*) ; 
 int lockf_debug ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct lockf *state, struct lockf_entry *unlock)
{
	struct lockf_entry *overlap;

	overlap = FUNC0(&state->ls_active);

	if (overlap == NOLOCKF)
		return (0);
#ifdef LOCKF_DEBUG
	if (unlock->lf_type != F_UNLCK)
		panic("lf_clearlock: bad type");
	if (lockf_debug & 1)
		lf_print("lf_clearlock", unlock);
#endif /* LOCKF_DEBUG */

	FUNC1(state, unlock);

	return (0);
}