#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nfsd_dumplist {int ndl_size; void* ndl_list; } ;
typedef  int /*<<< orphan*/  nbuf ;
struct TYPE_5__ {int nclid_idlen; int* nclid_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin_addr; } ;
struct TYPE_6__ {int ndcl_nopenowners; int ndcl_nopens; int ndcl_nlockowners; int ndcl_nlocks; int ndcl_ndelegs; int ndcl_nolddelegs; int ndcl_addrfam; TYPE_2__ ndcl_clid; TYPE_1__ ndcl_cbaddr; int /*<<< orphan*/  ndcl_flags; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int DUMPSIZE ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  NFSSVC_DUMPCLIENTS ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* dp ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int const,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct nfsd_dumplist*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct nfsd_dumplist dumplist;
	int cnt, i;
#ifdef INET6
	char nbuf[INET6_ADDRSTRLEN];
#endif

	dumplist.ndl_size = DUMPSIZE;
	dumplist.ndl_list = (void *)dp;
	if (FUNC4(NFSSVC_DUMPCLIENTS, &dumplist) < 0)
		FUNC1(1, "Can't perform dump clients syscall");

	FUNC5("%-13s %9.9s %9.9s %9.9s %9.9s %9.9s %9.9s %-45s %s\n",
	    "Flags", "OpenOwner", "Open", "LockOwner",
	    "Lock", "Deleg", "OldDeleg", "Clientaddr", "ClientID");
	/*
	 * Loop through results, printing them out.
	 */
	cnt = 0;
	while (dp[cnt].ndcl_clid.nclid_idlen > 0 && cnt < DUMPSIZE) {
		FUNC5("%-13s ", FUNC0(dp[cnt].ndcl_flags));
		FUNC5("%9d %9d %9d %9d %9d %9d ",
		    dp[cnt].ndcl_nopenowners,
		    dp[cnt].ndcl_nopens,
		    dp[cnt].ndcl_nlockowners,
		    dp[cnt].ndcl_nlocks,
		    dp[cnt].ndcl_ndelegs,
		    dp[cnt].ndcl_nolddelegs);
		switch (dp[cnt].ndcl_addrfam) {
#ifdef INET
		case AF_INET:
			printf("%-45s ",
			    inet_ntoa(dp[cnt].ndcl_cbaddr.sin_addr));
			break;
#endif
#ifdef INET6
		case AF_INET6:
			if (inet_ntop(AF_INET6, &dp[cnt].ndcl_cbaddr.sin6_addr,
			    nbuf, sizeof(nbuf)) != NULL)
				printf("%-45s ", nbuf);
			else
				printf("%-45s ", " ");
			break;
#endif
		}
		for (i = 0; i < dp[cnt].ndcl_clid.nclid_idlen; i++)
			FUNC5("%02x", dp[cnt].ndcl_clid.nclid_id[i]);
		FUNC5("\n");
		cnt++;
	}
}