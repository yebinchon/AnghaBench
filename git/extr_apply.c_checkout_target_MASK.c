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
struct stat {int dummy; } ;
struct index_state {int dummy; } ;
struct checkout {int refresh_cache; struct index_state* istate; } ;
struct cache_entry {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct checkout CHECKOUT_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct cache_entry*,struct checkout*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static int FUNC4(struct index_state *istate,
			   struct cache_entry *ce, struct stat *st)
{
	struct checkout costate = CHECKOUT_INIT;

	costate.refresh_cache = 1;
	costate.istate = istate;
	if (FUNC1(ce, &costate, NULL, NULL) ||
	    FUNC3(ce->name, st))
		return FUNC2(FUNC0("cannot checkout %s"), ce->name);
	return 0;
}