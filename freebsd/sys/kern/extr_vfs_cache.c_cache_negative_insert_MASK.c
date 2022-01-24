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
struct neglist {int /*<<< orphan*/  nl_lock; int /*<<< orphan*/  nl_list; } ;
struct namecache {int nc_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
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
 int /*<<< orphan*/  numneg ; 

__attribute__((used)) static void
FUNC8(struct namecache *ncp, bool neg_locked)
{
	struct neglist *neglist;

	FUNC0(ncp->nc_flag & NCF_NEGATIVE);
	FUNC4(ncp, RA_WLOCKED);
	neglist = FUNC1(ncp);
	if (!neg_locked) {
		FUNC6(&neglist->nl_lock);
	} else {
		FUNC5(&neglist->nl_lock, MA_OWNED);
	}
	FUNC2(&neglist->nl_list, ncp, nc_dst);
	if (!neg_locked)
		FUNC7(&neglist->nl_lock);
	FUNC3(&numneg, 1);
}