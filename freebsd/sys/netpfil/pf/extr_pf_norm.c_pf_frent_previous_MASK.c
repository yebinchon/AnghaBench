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
struct pf_frent {scalar_t__ fe_off; } ;
struct pf_fragment {struct pf_frent** fr_firstoff; int /*<<< orphan*/  fr_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PF_FRAG_ENTRY_POINTS ; 
 struct pf_frent* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pf_frent* FUNC2 (struct pf_frent*,int /*<<< orphan*/ ) ; 
 struct pf_frent* FUNC3 (struct pf_frent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fr_next ; 
 int /*<<< orphan*/  pf_fragq ; 
 int FUNC4 (struct pf_frent*) ; 

struct pf_frent *
FUNC5(struct pf_fragment *frag, struct pf_frent *frent)
{
	struct pf_frent *prev, *next;
	int index;

	/*
	 * If there are no fragments after frag, take the final one.  Assume
	 * that the global queue is not empty.
	 */
	prev = FUNC1(&frag->fr_queue, pf_fragq);
	FUNC0(prev != NULL, ("prev != NULL"));
	if (prev->fe_off <= frent->fe_off)
		return prev;
	/*
	 * We want to find a fragment entry that is before frag, but still
	 * close to it.  Find the first fragment entry that is in the same
	 * entry point or in the first entry point after that.  As we have
	 * already checked that there are entries behind frag, this will
	 * succeed.
	 */
	for (index = FUNC4(frent); index < PF_FRAG_ENTRY_POINTS;
	    index++) {
		prev = frag->fr_firstoff[index];
		if (prev != NULL)
			break;
	}
	FUNC0(prev != NULL, ("prev != NULL"));
	/*
	 * In prev we may have a fragment from the same entry point that is
	 * before frent, or one that is just one position behind frent.
	 * In the latter case, we go back one step and have the predecessor.
	 * There may be none if the new fragment will be the first one.
	 */
	if (prev->fe_off > frent->fe_off) {
		prev = FUNC3(prev, pf_fragq, fr_next);
		if (prev == NULL)
			return NULL;
		FUNC0(prev->fe_off <= frent->fe_off,
		    ("prev->fe_off <= frent->fe_off"));
		return prev;
	}
	/*
	 * In prev is the first fragment of the entry point.  The offset
	 * of frag is behind it.  Find the closest previous fragment.
	 */
	for (next = FUNC2(prev, fr_next); next != NULL;
	    next = FUNC2(next, fr_next)) {
		if (next->fe_off > frent->fe_off)
			break;
		prev = next;
	}
	return prev;
}