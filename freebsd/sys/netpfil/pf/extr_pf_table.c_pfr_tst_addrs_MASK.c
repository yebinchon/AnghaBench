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
struct pfr_kentry {scalar_t__ pfrke_not; } ;
struct pfr_addr {int /*<<< orphan*/  pfra_fback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct pfr_addr*) ; 
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  PFR_FB_MATCH ; 
 int /*<<< orphan*/  PFR_FB_NONE ; 
 int /*<<< orphan*/  PFR_FB_NOTMATCH ; 
 int PFR_FLAG_REPLACE ; 
 int PFR_TFLAG_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pfr_addr*,struct pfr_kentry*) ; 
 struct pfr_kentry* FUNC4 (struct pfr_ktable*,struct pfr_addr*,int /*<<< orphan*/ ) ; 
 struct pfr_ktable* FUNC5 (struct pfr_table*) ; 
 scalar_t__ FUNC6 (struct pfr_addr*) ; 
 scalar_t__ FUNC7 (struct pfr_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(struct pfr_table *tbl, struct pfr_addr *addr, int size,
	int *nmatch, int flags)
{
	struct pfr_ktable	*kt;
	struct pfr_kentry	*p;
	struct pfr_addr		*ad;
	int			 i, xmatch = 0;

	FUNC2();

	FUNC0(flags, PFR_FLAG_REPLACE);
	if (FUNC7(tbl, 0, 0))
		return (EINVAL);
	kt = FUNC5(tbl);
	if (kt == NULL || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
		return (ESRCH);

	for (i = 0, ad = addr; i < size; i++, ad++) {
		if (FUNC6(ad))
			return (EINVAL);
		if (FUNC1(ad))
			return (EINVAL);
		p = FUNC4(kt, ad, 0);
		if (flags & PFR_FLAG_REPLACE)
			FUNC3(ad, p);
		ad->pfra_fback = (p == NULL) ? PFR_FB_NONE :
		    (p->pfrke_not ? PFR_FB_NOTMATCH : PFR_FB_MATCH);
		if (p != NULL && !p->pfrke_not)
			xmatch++;
	}
	if (nmatch != NULL)
		*nmatch = xmatch;
	return (0);
}