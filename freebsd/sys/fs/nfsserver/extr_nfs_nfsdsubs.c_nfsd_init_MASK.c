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
struct nfssessionhash {int dummy; } ;
struct nfslockhashhead {int dummy; } ;
struct nfsclienthashhead {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NFSDCLIENT ; 
 int /*<<< orphan*/  M_NFSDLOCKFILE ; 
 int /*<<< orphan*/  M_NFSDSESSION ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFSX_V2FH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_v2pubfh ; 
 int /*<<< orphan*/ * nfsclienthash ; 
 int /*<<< orphan*/ * nfslockhash ; 
 int nfsrv_clienthashsize ; 
 int /*<<< orphan*/  nfsrv_dontlisthead ; 
 int nfsrv_lockhashsize ; 
 int /*<<< orphan*/  nfsrv_recalllisthead ; 
 int nfsrv_sessionhashsize ; 
 TYPE_1__* nfssessionhash ; 

void
FUNC5(void)
{
	int i;
	static int inited = 0;

	if (inited)
		return;
	inited = 1;

	/*
	 * Initialize client queues. Don't free/reinitialize
	 * them when nfsds are restarted.
	 */
	nfsclienthash = FUNC3(sizeof(struct nfsclienthashhead) *
	    nfsrv_clienthashsize, M_NFSDCLIENT, M_WAITOK | M_ZERO);
	for (i = 0; i < nfsrv_clienthashsize; i++)
		FUNC0(&nfsclienthash[i]);
	nfslockhash = FUNC3(sizeof(struct nfslockhashhead) *
	    nfsrv_lockhashsize, M_NFSDLOCKFILE, M_WAITOK | M_ZERO);
	for (i = 0; i < nfsrv_lockhashsize; i++)
		FUNC0(&nfslockhash[i]);
	nfssessionhash = FUNC3(sizeof(struct nfssessionhash) *
	    nfsrv_sessionhashsize, M_NFSDSESSION, M_WAITOK | M_ZERO);
	for (i = 0; i < nfsrv_sessionhashsize; i++) {
		FUNC4(&nfssessionhash[i].mtx, "nfssm", NULL, MTX_DEF);
		FUNC0(&nfssessionhash[i].list);
	}
	FUNC0(&nfsrv_dontlisthead);
	FUNC2(&nfsrv_recalllisthead);

	/* and the v2 pubfh should be all zeros */
	FUNC1(nfs_v2pubfh, NFSX_V2FH);
}