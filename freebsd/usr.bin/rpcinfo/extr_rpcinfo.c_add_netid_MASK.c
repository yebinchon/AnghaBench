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
struct rpcbdump_short {struct netidlist* nlist; } ;
struct netidlist {char* netid; struct netidlist* next; } ;
typedef  int /*<<< orphan*/  bool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static bool_t
FUNC2(struct rpcbdump_short *rs, char *netid)
{
	struct netidlist *nl;

	for (nl = rs->nlist; nl; nl = nl->next)
		if (FUNC1(nl->netid, netid) == 0)
			break;
	if (nl)
		return (TRUE);
	nl = (struct netidlist *)FUNC0(sizeof (struct netidlist));
	if (nl == NULL)
		return (FALSE);
	nl->netid = netid;
	nl->next = rs->nlist;
	rs->nlist = nl;
	return (TRUE);
}