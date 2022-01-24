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
struct nfsrv_descript {int /*<<< orphan*/  nd_sessionid; } ;
struct nfsdsession {TYPE_1__* sess_clp; } ;
struct TYPE_2__ {int lc_flags; } ;

/* Variables and functions */
 int LCL_RECLAIMCOMPLETE ; 
 int LCL_RECLAIMONEFS ; 
 int NFSERR_BADSESSION ; 
 int NFSERR_COMPLETEALREADY ; 
 int /*<<< orphan*/  FUNC0 (struct nfssessionhash*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct nfssessionhash* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfssessionhash*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct nfsdsession* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int
FUNC7(struct nfsrv_descript *nd, int onefs)
{
	struct nfsdsession *sep;
	struct nfssessionhash *shp;
	int error = 0;

	shp = FUNC2(nd->nd_sessionid);
	FUNC1();
	FUNC0(shp);
	sep = FUNC5(nd->nd_sessionid);
	if (sep == NULL) {
		FUNC3(shp);
		FUNC4();
		return (NFSERR_BADSESSION);
	}

	if (onefs != 0)
		sep->sess_clp->lc_flags |= LCL_RECLAIMONEFS;
		/* Check to see if reclaim complete has already happened. */
	else if ((sep->sess_clp->lc_flags & LCL_RECLAIMCOMPLETE) != 0)
		error = NFSERR_COMPLETEALREADY;
	else {
		sep->sess_clp->lc_flags |= LCL_RECLAIMCOMPLETE;
		FUNC6(sep->sess_clp);
	}
	FUNC3(shp);
	FUNC4();
	return (error);
}