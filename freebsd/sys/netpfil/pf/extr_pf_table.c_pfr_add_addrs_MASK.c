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
struct pfr_ktable {int pfrkt_flags; } ;
struct pfr_kentryworkq {int dummy; } ;
struct pfr_kentry {scalar_t__ pfrke_not; } ;
struct pfr_addr {scalar_t__ pfra_not; void* pfra_fback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int ESRCH ; 
 void* PFR_FB_ADDED ; 
 void* PFR_FB_CONFLICT ; 
 void* PFR_FB_DUPLICATE ; 
 void* PFR_FB_NONE ; 
 int PFR_FLAG_DUMMY ; 
 int PFR_FLAG_FEEDBACK ; 
 int PFR_FLAG_USERIOCTL ; 
 int PFR_TFLAG_ACTIVE ; 
 int PFR_TFLAG_CONST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pfr_kentryworkq*) ; 
 int /*<<< orphan*/  FUNC3 (struct pfr_kentryworkq*,struct pfr_kentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_pfr_nulltable ; 
 int /*<<< orphan*/  FUNC4 (struct pfr_ktable*,struct pfr_kentryworkq*) ; 
 struct pfr_kentry* FUNC5 (struct pfr_addr*) ; 
 struct pfr_ktable* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pfr_kentryworkq*) ; 
 int /*<<< orphan*/  FUNC8 (struct pfr_kentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct pfr_ktable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pfr_ktable*,struct pfr_kentryworkq*,long) ; 
 struct pfr_kentry* FUNC11 (struct pfr_ktable*,struct pfr_addr*,int) ; 
 struct pfr_ktable* FUNC12 (struct pfr_table*) ; 
 int /*<<< orphan*/  FUNC13 (struct pfr_addr*,int) ; 
 scalar_t__ FUNC14 (struct pfr_ktable*,struct pfr_kentry*) ; 
 scalar_t__ FUNC15 (struct pfr_addr*) ; 
 scalar_t__ FUNC16 (struct pfr_table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pfrke_workq ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 long time_second ; 

int
FUNC18(struct pfr_table *tbl, struct pfr_addr *addr, int size,
    int *nadd, int flags)
{
	struct pfr_ktable	*kt, *tmpkt;
	struct pfr_kentryworkq	 workq;
	struct pfr_kentry	*p, *q;
	struct pfr_addr		*ad;
	int			 i, rv, xadd = 0;
	long			 tzero = time_second;

	FUNC1();

	FUNC0(flags, PFR_FLAG_DUMMY | PFR_FLAG_FEEDBACK);
	if (FUNC16(tbl, 0, flags & PFR_FLAG_USERIOCTL))
		return (EINVAL);
	kt = FUNC12(tbl);
	if (kt == NULL || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
		return (ESRCH);
	if (kt->pfrkt_flags & PFR_TFLAG_CONST)
		return (EPERM);
	tmpkt = FUNC6(&V_pfr_nulltable, 0, 0);
	if (tmpkt == NULL)
		return (ENOMEM);
	FUNC2(&workq);
	for (i = 0, ad = addr; i < size; i++, ad++) {
		if (FUNC15(ad))
			FUNC17(EINVAL);
		p = FUNC11(kt, ad, 1);
		q = FUNC11(tmpkt, ad, 1);
		if (flags & PFR_FLAG_FEEDBACK) {
			if (q != NULL)
				ad->pfra_fback = PFR_FB_DUPLICATE;
			else if (p == NULL)
				ad->pfra_fback = PFR_FB_ADDED;
			else if (p->pfrke_not != ad->pfra_not)
				ad->pfra_fback = PFR_FB_CONFLICT;
			else
				ad->pfra_fback = PFR_FB_NONE;
		}
		if (p == NULL && q == NULL) {
			p = FUNC5(ad);
			if (p == NULL)
				FUNC17(ENOMEM);
			if (FUNC14(tmpkt, p)) {
				FUNC8(p);
				ad->pfra_fback = PFR_FB_NONE;
			} else {
				FUNC3(&workq, p, pfrke_workq);
				xadd++;
			}
		}
	}
	FUNC4(tmpkt, &workq);
	if (!(flags & PFR_FLAG_DUMMY))
		FUNC10(kt, &workq, tzero);
	else
		FUNC7(&workq);
	if (nadd != NULL)
		*nadd = xadd;
	FUNC9(tmpkt, 0);
	return (0);
_bad:
	FUNC4(tmpkt, &workq);
	FUNC7(&workq);
	if (flags & PFR_FLAG_FEEDBACK)
		FUNC13(addr, size);
	FUNC9(tmpkt, 0);
	return (rv);
}