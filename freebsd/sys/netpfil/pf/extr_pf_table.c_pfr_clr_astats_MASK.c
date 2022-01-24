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
struct pfr_kentry {int dummy; } ;
struct pfr_addr {int /*<<< orphan*/  pfra_fback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  PFR_FB_CLEARED ; 
 int /*<<< orphan*/  PFR_FB_NONE ; 
 int PFR_FLAG_DUMMY ; 
 int PFR_FLAG_FEEDBACK ; 
 int PFR_TFLAG_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pfr_kentryworkq*) ; 
 int /*<<< orphan*/  FUNC3 (struct pfr_kentryworkq*,struct pfr_kentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pfr_kentryworkq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pfr_kentry* FUNC5 (struct pfr_ktable*,struct pfr_addr*,int) ; 
 struct pfr_ktable* FUNC6 (struct pfr_table*) ; 
 int /*<<< orphan*/  FUNC7 (struct pfr_addr*,int) ; 
 scalar_t__ FUNC8 (struct pfr_addr*) ; 
 scalar_t__ FUNC9 (struct pfr_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfrke_workq ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int
FUNC11(struct pfr_table *tbl, struct pfr_addr *addr, int size,
    int *nzero, int flags)
{
	struct pfr_ktable	*kt;
	struct pfr_kentryworkq	 workq;
	struct pfr_kentry	*p;
	struct pfr_addr		*ad;
	int			 i, rv, xzero = 0;

	FUNC1();

	FUNC0(flags, PFR_FLAG_DUMMY | PFR_FLAG_FEEDBACK);
	if (FUNC9(tbl, 0, 0))
		return (EINVAL);
	kt = FUNC6(tbl);
	if (kt == NULL || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
		return (ESRCH);
	FUNC2(&workq);
	for (i = 0, ad = addr; i < size; i++, ad++) {
		if (FUNC8(ad))
			FUNC10(EINVAL);
		p = FUNC5(kt, ad, 1);
		if (flags & PFR_FLAG_FEEDBACK) {
			ad->pfra_fback = (p != NULL) ?
			    PFR_FB_CLEARED : PFR_FB_NONE;
		}
		if (p != NULL) {
			FUNC3(&workq, p, pfrke_workq);
			xzero++;
		}
	}

	if (!(flags & PFR_FLAG_DUMMY))
		FUNC4(&workq, 0, 0);
	if (nzero != NULL)
		*nzero = xzero;
	return (0);
_bad:
	if (flags & PFR_FLAG_FEEDBACK)
		FUNC7(addr, size);
	return (rv);
}