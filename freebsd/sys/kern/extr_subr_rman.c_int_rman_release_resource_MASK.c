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
struct rman {int /*<<< orphan*/  rm_list; } ;
struct resource_i {int r_flags; scalar_t__ r_end; scalar_t__ r_start; int /*<<< orphan*/ * r_dev; struct resource_i* r_sharehead; } ;

/* Variables and functions */
 struct resource_i* FUNC0 (struct resource_i*) ; 
 int /*<<< orphan*/ * FUNC1 (struct resource_i*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct resource_i*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_RMAN ; 
 int RF_ACTIVE ; 
 int RF_ALLOCATED ; 
 int RF_FIRSTSHARE ; 
 int /*<<< orphan*/  FUNC3 (struct resource_i*,struct resource_i*,int /*<<< orphan*/ ) ; 
 struct resource_i* FUNC4 (struct resource_i*,int /*<<< orphan*/ ) ; 
 struct resource_i* FUNC5 (struct resource_i*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource_i*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource_i*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r_link ; 
 int /*<<< orphan*/  r_sharelink ; 
 int /*<<< orphan*/  resource_head ; 

__attribute__((used)) static int
FUNC8(struct rman *rm, struct resource_i *r)
{
	struct resource_i *s, *t;

	if (r->r_flags & RF_ACTIVE)
		r->r_flags &= ~RF_ACTIVE;

	/*
	 * Check for a sharing list first.  If there is one, then we don't
	 * have to think as hard.
	 */
	if (r->r_sharehead) {
		/*
		 * If a sharing list exists, then we know there are at
		 * least two sharers.
		 *
		 * If we are in the main circleq, appoint someone else.
		 */
		FUNC2(r, r_sharelink);
		s = FUNC0(r->r_sharehead);
		if (r->r_flags & RF_FIRSTSHARE) {
			s->r_flags |= RF_FIRSTSHARE;
			FUNC3(r, s, r_link);
			FUNC6(&rm->rm_list, r, r_link);
		}

		/*
		 * Make sure that the sharing list goes away completely
		 * if the resource is no longer being shared at all.
		 */
		if (FUNC1(s, r_sharelink) == NULL) {
			FUNC7(s->r_sharehead, M_RMAN);
			s->r_sharehead = NULL;
			s->r_flags &= ~RF_FIRSTSHARE;
		}
		goto out;
	}

	/*
	 * Look at the adjacent resources in the list and see if our
	 * segment can be merged with any of them.  If either of the
	 * resources is allocated or is not exactly adjacent then they
	 * cannot be merged with our segment.
	 */
	s = FUNC5(r, resource_head, r_link);
	if (s != NULL && ((s->r_flags & RF_ALLOCATED) != 0 ||
	    s->r_end + 1 != r->r_start))
		s = NULL;
	t = FUNC4(r, r_link);
	if (t != NULL && ((t->r_flags & RF_ALLOCATED) != 0 ||
	    r->r_end + 1 != t->r_start))
		t = NULL;

	if (s != NULL && t != NULL) {
		/*
		 * Merge all three segments.
		 */
		s->r_end = t->r_end;
		FUNC6(&rm->rm_list, r, r_link);
		FUNC6(&rm->rm_list, t, r_link);
		FUNC7(t, M_RMAN);
	} else if (s != NULL) {
		/*
		 * Merge previous segment with ours.
		 */
		s->r_end = r->r_end;
		FUNC6(&rm->rm_list, r, r_link);
	} else if (t != NULL) {
		/*
		 * Merge next segment with ours.
		 */
		t->r_start = r->r_start;
		FUNC6(&rm->rm_list, r, r_link);
	} else {
		/*
		 * At this point, we know there is nothing we
		 * can potentially merge with, because on each
		 * side, there is either nothing there or what is
		 * there is still allocated.  In that case, we don't
		 * want to remove r from the list; we simply want to
		 * change it to an unallocated region and return
		 * without freeing anything.
		 */
		r->r_flags &= ~RF_ALLOCATED;
		r->r_dev = NULL;
		return 0;
	}

out:
	FUNC7(r, M_RMAN);
	return 0;
}