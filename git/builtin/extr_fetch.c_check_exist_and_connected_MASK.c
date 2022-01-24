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
struct ref {int /*<<< orphan*/  old_oid; struct ref* next; } ;
struct check_connected_options {int quiet; } ;

/* Variables and functions */
 struct check_connected_options CHECK_CONNECTED_INIT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ref**,struct check_connected_options*) ; 
 scalar_t__ deepen ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iterate_ref_map ; 

__attribute__((used)) static int FUNC2(struct ref *ref_map)
{
	struct ref *rm = ref_map;
	struct check_connected_options opt = CHECK_CONNECTED_INIT;
	struct ref *r;

	/*
	 * If we are deepening a shallow clone we already have these
	 * objects reachable.  Running rev-list here will return with
	 * a good (0) exit status and we'll bypass the fetch that we
	 * really need to perform.  Claiming failure now will ensure
	 * we perform the network exchange to deepen our history.
	 */
	if (deepen)
		return -1;

	/*
	 * check_connected() allows objects to merely be promised, but
	 * we need all direct targets to exist.
	 */
	for (r = rm; r; r = r->next) {
		if (!FUNC1(&r->old_oid))
			return -1;
	}

	opt.quiet = 1;
	return FUNC0(iterate_ref_map, &rm, &opt);
}