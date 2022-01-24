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
typedef  int u_int ;
struct rman {int /*<<< orphan*/  rm_mtx; int /*<<< orphan*/  rm_list; int /*<<< orphan*/  rm_descr; } ;
struct resource {int dummy; } ;
struct resource_i {int r_end; int r_start; int r_flags; struct resource r_r; int /*<<< orphan*/ * r_sharehead; struct rman* r_rm; int /*<<< orphan*/ * r_dev; } ;
typedef  int rman_res_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource_i*,int /*<<< orphan*/ ) ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_RMAN ; 
 int M_ZERO ; 
 unsigned long long FUNC4 (int) ; 
 int RF_ALLOCATED ; 
 int RF_FIRSTSHARE ; 
 int RF_SHAREABLE ; 
 int RM_MAX_END ; 
 scalar_t__ FUNC5 (int) ; 
 struct resource_i* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct resource_i*,struct resource_i*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource_i*,struct resource_i*,int /*<<< orphan*/ ) ; 
 struct resource_i* FUNC9 (struct resource_i*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct resource_i*,int /*<<< orphan*/ ) ; 
 struct resource_i* FUNC12 (int) ; 
 int /*<<< orphan*/ * FUNC13 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r_link ; 
 int /*<<< orphan*/  r_sharelink ; 
 int FUNC16 (int,int) ; 
 int FUNC17 (int,int) ; 

struct resource *
FUNC18(struct rman *rm, rman_res_t start, rman_res_t end,
			    rman_res_t count, rman_res_t bound, u_int flags,
			    device_t dev)
{
	u_int new_rflags;
	struct resource_i *r, *s, *rv;
	rman_res_t rstart, rend, amask, bmask;

	rv = NULL;

	FUNC0(("rman_reserve_resource_bound: <%s> request: [%#jx, %#jx], "
	       "length %#jx, flags %x, device %s\n", rm->rm_descr, start, end,
	       count, flags,
	       dev == NULL ? "<null>" : FUNC10(dev)));
	FUNC1((flags & RF_FIRSTSHARE) == 0,
	    ("invalid flags %#x", flags));
	new_rflags = (flags & ~RF_FIRSTSHARE) | RF_ALLOCATED;

	FUNC14(rm->rm_mtx);

	r = FUNC6(&rm->rm_list);
	if (r == NULL) {
	    FUNC0(("NULL list head\n"));
	} else {
	    FUNC0(("rman_reserve_resource_bound: trying %#jx <%#jx,%#jx>\n",
		    r->r_end, start, count-1));
	}
	for (r = FUNC6(&rm->rm_list);
	     r && r->r_end < start + count - 1;
	     r = FUNC9(r, r_link)) {
		;
		FUNC0(("rman_reserve_resource_bound: tried %#jx <%#jx,%#jx>\n",
			r->r_end, start, count-1));
	}

	if (r == NULL) {
		FUNC0(("could not find a region\n"));
		goto out;
	}

	amask = (1ull << FUNC4(flags)) - 1;
	FUNC1(start <= RM_MAX_END - amask,
	    ("start (%#jx) + amask (%#jx) would wrap around", start, amask));

	/* If bound is 0, bmask will also be 0 */
	bmask = ~(bound - 1);
	/*
	 * First try to find an acceptable totally-unshared region.
	 */
	for (s = r; s; s = FUNC9(s, r_link)) {
		FUNC0(("considering [%#jx, %#jx]\n", s->r_start, s->r_end));
		/*
		 * The resource list is sorted, so there is no point in
		 * searching further once r_start is too large.
		 */
		if (s->r_start > end - (count - 1)) {
			FUNC0(("s->r_start (%#jx) + count - 1> end (%#jx)\n",
			    s->r_start, end));
			break;
		}
		if (s->r_start > RM_MAX_END - amask) {
			FUNC0(("s->r_start (%#jx) + amask (%#jx) too large\n",
			    s->r_start, amask));
			break;
		}
		if (s->r_flags & RF_ALLOCATED) {
			FUNC0(("region is allocated\n"));
			continue;
		}
		rstart = FUNC16(s->r_start, start);
		/*
		 * Try to find a region by adjusting to boundary and alignment
		 * until both conditions are satisfied. This is not an optimal
		 * algorithm, but in most cases it isn't really bad, either.
		 */
		do {
			rstart = (rstart + amask) & ~amask;
			if (((rstart ^ (rstart + count - 1)) & bmask) != 0)
				rstart += bound - (rstart & ~bmask);
		} while ((rstart & amask) != 0 && rstart < end &&
		    rstart < s->r_end);
		rend = FUNC17(s->r_end, FUNC16(rstart + count - 1, end));
		if (rstart > rend) {
			FUNC0(("adjusted start exceeds end\n"));
			continue;
		}
		FUNC0(("truncated region: [%#jx, %#jx]; size %#jx (requested %#jx)\n",
		       rstart, rend, (rend - rstart + 1), count));

		if ((rend - rstart + 1) >= count) {
			FUNC0(("candidate region: [%#jx, %#jx], size %#jx\n",
			       rstart, rend, (rend - rstart + 1)));
			if ((s->r_end - s->r_start + 1) == count) {
				FUNC0(("candidate region is entire chunk\n"));
				rv = s;
				rv->r_flags = new_rflags;
				rv->r_dev = dev;
				goto out;
			}

			/*
			 * If s->r_start < rstart and
			 *    s->r_end > rstart + count - 1, then
			 * we need to split the region into three pieces
			 * (the middle one will get returned to the user).
			 * Otherwise, we are allocating at either the
			 * beginning or the end of s, so we only need to
			 * split it in two.  The first case requires
			 * two new allocations; the second requires but one.
			 */
			rv = FUNC12(M_NOWAIT);
			if (rv == NULL)
				goto out;
			rv->r_start = rstart;
			rv->r_end = rstart + count - 1;
			rv->r_flags = new_rflags;
			rv->r_dev = dev;
			rv->r_rm = rm;

			if (s->r_start < rv->r_start && s->r_end > rv->r_end) {
				FUNC0(("splitting region in three parts: "
				       "[%#jx, %#jx]; [%#jx, %#jx]; [%#jx, %#jx]\n",
				       s->r_start, rv->r_start - 1,
				       rv->r_start, rv->r_end,
				       rv->r_end + 1, s->r_end));
				/*
				 * We are allocating in the middle.
				 */
				r = FUNC12(M_NOWAIT);
				if (r == NULL) {
					FUNC11(rv, M_RMAN);
					rv = NULL;
					goto out;
				}
				r->r_start = rv->r_end + 1;
				r->r_end = s->r_end;
				r->r_flags = s->r_flags;
				r->r_rm = rm;
				s->r_end = rv->r_start - 1;
				FUNC7(&rm->rm_list, s, rv,
						     r_link);
				FUNC7(&rm->rm_list, rv, r,
						     r_link);
			} else if (s->r_start == rv->r_start) {
				FUNC0(("allocating from the beginning\n"));
				/*
				 * We are allocating at the beginning.
				 */
				s->r_start = rv->r_end + 1;
				FUNC8(s, rv, r_link);
			} else {
				FUNC0(("allocating at the end\n"));
				/*
				 * We are allocating at the end.
				 */
				s->r_end = rv->r_start - 1;
				FUNC7(&rm->rm_list, s, rv,
						     r_link);
			}
			goto out;
		}
	}

	/*
	 * Now find an acceptable shared region, if the client's requirements
	 * allow sharing.  By our implementation restriction, a candidate
	 * region must match exactly by both size and sharing type in order
	 * to be considered compatible with the client's request.  (The
	 * former restriction could probably be lifted without too much
	 * additional work, but this does not seem warranted.)
	 */
	FUNC0(("no unshared regions found\n"));
	if ((flags & RF_SHAREABLE) == 0)
		goto out;

	for (s = r; s && s->r_end <= end; s = FUNC9(s, r_link)) {
		if (FUNC5(s->r_flags) == FUNC5(flags) &&
		    s->r_start >= start &&
		    (s->r_end - s->r_start + 1) == count &&
		    (s->r_start & amask) == 0 &&
		    ((s->r_start ^ s->r_end) & bmask) == 0) {
			rv = FUNC12(M_NOWAIT);
			if (rv == NULL)
				goto out;
			rv->r_start = s->r_start;
			rv->r_end = s->r_end;
			rv->r_flags = new_rflags;
			rv->r_dev = dev;
			rv->r_rm = rm;
			if (s->r_sharehead == NULL) {
				s->r_sharehead = FUNC13(sizeof *s->r_sharehead,
						M_RMAN, M_NOWAIT | M_ZERO);
				if (s->r_sharehead == NULL) {
					FUNC11(rv, M_RMAN);
					rv = NULL;
					goto out;
				}
				FUNC2(s->r_sharehead);
				FUNC3(s->r_sharehead, s,
						 r_sharelink);
				s->r_flags |= RF_FIRSTSHARE;
			}
			rv->r_sharehead = s->r_sharehead;
			FUNC3(s->r_sharehead, rv, r_sharelink);
			goto out;
		}
	}
	/*
	 * We couldn't find anything.
	 */

out:
	FUNC15(rm->rm_mtx);
	return (rv == NULL ? NULL : &rv->r_r);
}