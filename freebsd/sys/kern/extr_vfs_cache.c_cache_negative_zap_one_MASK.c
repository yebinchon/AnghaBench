#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rwlock {int dummy; } ;
struct mtx {int dummy; } ;
struct neglist {struct mtx nl_lock; int /*<<< orphan*/  nl_list; } ;
struct namecache {int nc_flag; int /*<<< orphan*/  nc_name; int /*<<< orphan*/  nc_dvp; } ;
struct TYPE_2__ {struct mtx nl_lock; int /*<<< orphan*/  nl_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NCF_HOTNEGATIVE ; 
 int NCF_NEGATIVE ; 
 struct rwlock* FUNC1 (struct namecache*) ; 
 struct neglist* FUNC2 (struct namecache*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct namecache* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct namecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct namecache*,int /*<<< orphan*/ ) ; 
 struct mtx* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct namecache*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct namecache**,struct neglist**) ; 
 int /*<<< orphan*/  FUNC10 (struct namecache*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC12 (struct mtx*) ; 
 int /*<<< orphan*/ * FUNC13 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC14 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC15 (struct mtx*) ; 
 int /*<<< orphan*/  namecache ; 
 int /*<<< orphan*/  nc_dst ; 
 TYPE_1__ ncneg_hot ; 
 struct mtx ncneg_shrink_lock ; 
 int /*<<< orphan*/  numhotneg ; 
 int /*<<< orphan*/  numneg_evicted ; 
 scalar_t__ numneglists ; 
 int /*<<< orphan*/  FUNC16 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC17 (struct rwlock*) ; 
 scalar_t__ shrink_list_turn ; 
 int /*<<< orphan*/  shrink_negative ; 
 int /*<<< orphan*/  shrinking_skipped ; 
 int /*<<< orphan*/  vfs ; 

__attribute__((used)) static void
FUNC18(void)
{
	struct namecache *ncp, *ncp2;
	struct neglist *neglist;
	struct mtx *dvlp;
	struct rwlock *blp;

	if (FUNC13(&ncneg_shrink_lock) != NULL ||
	    !FUNC14(&ncneg_shrink_lock)) {
		FUNC11(shrinking_skipped, 1);
		return;
	}

	FUNC12(&ncneg_hot.nl_lock);
	ncp = FUNC4(&ncneg_hot.nl_list);
	if (ncp != NULL) {
		neglist = FUNC2(ncp);
		FUNC12(&neglist->nl_lock);
		FUNC6(&ncneg_hot.nl_list, ncp, nc_dst);
		FUNC5(&neglist->nl_list, ncp, nc_dst);
		ncp->nc_flag &= ~NCF_HOTNEGATIVE;
		numhotneg--;
		FUNC15(&neglist->nl_lock);
	}
	FUNC15(&ncneg_hot.nl_lock);

	FUNC9(shrink_list_turn, &ncp, &neglist);
	shrink_list_turn++;
	if (shrink_list_turn == numneglists)
		shrink_list_turn = 0;
	if (ncp == NULL && shrink_list_turn == 0)
		FUNC9(shrink_list_turn, &ncp, &neglist);
	FUNC15(&ncneg_shrink_lock);
	if (ncp == NULL)
		return;

	FUNC0(ncp->nc_flag & NCF_NEGATIVE);
	dvlp = FUNC7(ncp->nc_dvp);
	blp = FUNC1(ncp);
	FUNC15(&neglist->nl_lock);
	FUNC12(dvlp);
	FUNC16(blp);
	FUNC12(&neglist->nl_lock);
	ncp2 = FUNC4(&neglist->nl_list);
	if (ncp != ncp2 || dvlp != FUNC7(ncp2->nc_dvp) ||
	    blp != FUNC1(ncp2) || !(ncp2->nc_flag & NCF_NEGATIVE)) {
		ncp = NULL;
	} else {
		FUNC3(vfs, namecache, shrink_negative, done, ncp->nc_dvp,
		    ncp->nc_name);

		FUNC10(ncp, true);
		FUNC11(numneg_evicted, 1);
	}
	FUNC15(&neglist->nl_lock);
	FUNC17(blp);
	FUNC15(dvlp);
	FUNC8(ncp);
}