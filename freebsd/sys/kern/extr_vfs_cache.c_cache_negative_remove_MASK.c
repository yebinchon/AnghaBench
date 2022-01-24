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
struct neglist {int /*<<< orphan*/  nl_lock; int /*<<< orphan*/  nl_list; } ;
struct namecache {int nc_flag; } ;
struct TYPE_2__ {int /*<<< orphan*/  nl_lock; int /*<<< orphan*/  nl_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NCF_HOTNEGATIVE ; 
 int NCF_NEGATIVE ; 
 struct neglist* FUNC1 (struct namecache*) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct namecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct namecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nc_dst ; 
 TYPE_1__ ncneg_hot ; 
 int /*<<< orphan*/  numhotneg ; 
 int /*<<< orphan*/  numneg ; 

__attribute__((used)) static void
FUNC8(struct namecache *ncp, bool neg_locked)
{
	struct neglist *neglist;
	bool hot_locked = false;
	bool list_locked = false;

	FUNC0(ncp->nc_flag & NCF_NEGATIVE);
	FUNC4(ncp, RA_WLOCKED);
	neglist = FUNC1(ncp);
	if (!neg_locked) {
		if (ncp->nc_flag & NCF_HOTNEGATIVE) {
			hot_locked = true;
			FUNC6(&ncneg_hot.nl_lock);
			if (!(ncp->nc_flag & NCF_HOTNEGATIVE)) {
				list_locked = true;
				FUNC6(&neglist->nl_lock);
			}
		} else {
			list_locked = true;
			FUNC6(&neglist->nl_lock);
		}
	}
	if (ncp->nc_flag & NCF_HOTNEGATIVE) {
		FUNC5(&ncneg_hot.nl_lock, MA_OWNED);
		FUNC2(&ncneg_hot.nl_list, ncp, nc_dst);
		numhotneg--;
	} else {
		FUNC5(&neglist->nl_lock, MA_OWNED);
		FUNC2(&neglist->nl_list, ncp, nc_dst);
	}
	if (list_locked)
		FUNC7(&neglist->nl_lock);
	if (hot_locked)
		FUNC7(&ncneg_hot.nl_lock);
	FUNC3(&numneg, 1);
}