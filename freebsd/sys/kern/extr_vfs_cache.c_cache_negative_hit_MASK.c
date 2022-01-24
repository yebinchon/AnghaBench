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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NCF_HOTNEGATIVE ; 
 int NCF_NEGATIVE ; 
 struct neglist* FUNC1 (struct namecache*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct namecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct namecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nc_dst ; 
 TYPE_1__ ncneg_hot ; 
 int /*<<< orphan*/  numhotneg ; 

__attribute__((used)) static void
FUNC6(struct namecache *ncp)
{
	struct neglist *neglist;

	FUNC0(ncp->nc_flag & NCF_NEGATIVE);
	if (ncp->nc_flag & NCF_HOTNEGATIVE)
		return;
	neglist = FUNC1(ncp);
	FUNC4(&ncneg_hot.nl_lock);
	FUNC4(&neglist->nl_lock);
	if (!(ncp->nc_flag & NCF_HOTNEGATIVE)) {
		numhotneg++;
		FUNC3(&neglist->nl_list, ncp, nc_dst);
		FUNC2(&ncneg_hot.nl_list, ncp, nc_dst);
		ncp->nc_flag |= NCF_HOTNEGATIVE;
	}
	FUNC5(&neglist->nl_lock);
	FUNC5(&ncneg_hot.nl_lock);
}