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
typedef  int /*<<< orphan*/  uint8_t ;
struct nfsrv_descript {int nd_flag; int /*<<< orphan*/  nd_sessionid; } ;

/* Variables and functions */
 int ND_HASSEQUENCE ; 
 int ND_LASTOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NFSERR_BADSESSION ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  NFSV4ROOTLOCKMUTEXPTR ; 
 int /*<<< orphan*/  NFSX_V4SESSIONID ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nfsv4rootfs_lock ; 

int
FUNC7(struct nfsrv_descript *nd, uint8_t *sessionid)
{
	int error, igotlock, samesess;

	samesess = 0;
	if (!FUNC0(sessionid, nd->nd_sessionid, NFSX_V4SESSIONID) &&
	    (nd->nd_flag & ND_HASSEQUENCE) != 0) {
		samesess = 1;
		if ((nd->nd_flag & ND_LASTOP) == 0)
			return (NFSERR_BADSESSION);
	}

	/* Lock out other nfsd threads */
	FUNC1();
	FUNC5(&nfsv4rootfs_lock);
	do {
		igotlock = FUNC4(&nfsv4rootfs_lock, 1, NULL,
		    NFSV4ROOTLOCKMUTEXPTR, NULL);
	} while (igotlock == 0);
	FUNC2();

	error = FUNC3(NULL, sessionid);
	if (error == 0 && samesess != 0)
		nd->nd_flag &= ~ND_HASSEQUENCE;

	FUNC1();
	FUNC6(&nfsv4rootfs_lock, 1);
	FUNC2();
	return (error);
}