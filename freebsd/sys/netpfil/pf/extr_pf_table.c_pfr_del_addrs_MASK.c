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
struct pfr_table {int dummy; } ;
struct pfr_ktable {int pfrkt_flags; int pfrkt_cnt; } ;
struct pfr_kentryworkq {int dummy; } ;
struct pfr_kentry {int pfrke_mark; scalar_t__ pfrke_not; } ;
struct pfr_addr {scalar_t__ pfra_not; int /*<<< orphan*/  pfra_fback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EINVAL ; 
 int EPERM ; 
 int ESRCH ; 
 int /*<<< orphan*/  PFR_FB_CONFLICT ; 
 int /*<<< orphan*/  PFR_FB_DELETED ; 
 int /*<<< orphan*/  PFR_FB_DUPLICATE ; 
 int /*<<< orphan*/  PFR_FB_NONE ; 
 int PFR_FLAG_DUMMY ; 
 int PFR_FLAG_FEEDBACK ; 
 int PFR_FLAG_USERIOCTL ; 
 int PFR_TFLAG_ACTIVE ; 
 int PFR_TFLAG_CONST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pfr_kentryworkq*) ; 
 int /*<<< orphan*/  FUNC3 (struct pfr_kentryworkq*,struct pfr_kentry*,int /*<<< orphan*/ ) ; 
 struct pfr_kentry* FUNC4 (struct pfr_ktable*,struct pfr_addr*,int) ; 
 struct pfr_ktable* FUNC5 (struct pfr_table*) ; 
 int /*<<< orphan*/  FUNC6 (struct pfr_ktable*) ; 
 int /*<<< orphan*/  FUNC7 (struct pfr_ktable*,struct pfr_kentryworkq*) ; 
 int /*<<< orphan*/  FUNC8 (struct pfr_addr*,int) ; 
 scalar_t__ FUNC9 (struct pfr_addr*) ; 
 scalar_t__ FUNC10 (struct pfr_table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pfrke_workq ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int
FUNC12(struct pfr_table *tbl, struct pfr_addr *addr, int size,
    int *ndel, int flags)
{
	struct pfr_ktable	*kt;
	struct pfr_kentryworkq	 workq;
	struct pfr_kentry	*p;
	struct pfr_addr		*ad;
	int			 i, rv, xdel = 0, log = 1;

	FUNC1();

	FUNC0(flags, PFR_FLAG_DUMMY | PFR_FLAG_FEEDBACK);
	if (FUNC10(tbl, 0, flags & PFR_FLAG_USERIOCTL))
		return (EINVAL);
	kt = FUNC5(tbl);
	if (kt == NULL || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
		return (ESRCH);
	if (kt->pfrkt_flags & PFR_TFLAG_CONST)
		return (EPERM);
	/*
	 * there are two algorithms to choose from here.
	 * with:
	 *   n: number of addresses to delete
	 *   N: number of addresses in the table
	 *
	 * one is O(N) and is better for large 'n'
	 * one is O(n*LOG(N)) and is better for small 'n'
	 *
	 * following code try to decide which one is best.
	 */
	for (i = kt->pfrkt_cnt; i > 0; i >>= 1)
		log++;
	if (size > kt->pfrkt_cnt/log) {
		/* full table scan */
		FUNC6(kt);
	} else {
		/* iterate over addresses to delete */
		for (i = 0, ad = addr; i < size; i++, ad++) {
			if (FUNC9(ad))
				return (EINVAL);
			p = FUNC4(kt, ad, 1);
			if (p != NULL)
				p->pfrke_mark = 0;
		}
	}
	FUNC2(&workq);
	for (i = 0, ad = addr; i < size; i++, ad++) {
		if (FUNC9(ad))
			FUNC11(EINVAL);
		p = FUNC4(kt, ad, 1);
		if (flags & PFR_FLAG_FEEDBACK) {
			if (p == NULL)
				ad->pfra_fback = PFR_FB_NONE;
			else if (p->pfrke_not != ad->pfra_not)
				ad->pfra_fback = PFR_FB_CONFLICT;
			else if (p->pfrke_mark)
				ad->pfra_fback = PFR_FB_DUPLICATE;
			else
				ad->pfra_fback = PFR_FB_DELETED;
		}
		if (p != NULL && p->pfrke_not == ad->pfra_not &&
		    !p->pfrke_mark) {
			p->pfrke_mark = 1;
			FUNC3(&workq, p, pfrke_workq);
			xdel++;
		}
	}
	if (!(flags & PFR_FLAG_DUMMY))
		FUNC7(kt, &workq);
	if (ndel != NULL)
		*ndel = xdel;
	return (0);
_bad:
	if (flags & PFR_FLAG_FEEDBACK)
		FUNC8(addr, size);
	return (rv);
}