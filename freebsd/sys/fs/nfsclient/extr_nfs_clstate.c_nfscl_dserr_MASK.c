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
typedef  int uint32_t ;
struct nfsclrecalllayout {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  seqid; } ;
struct nfscllayout {int nfsly_flags; TYPE_1__ nfsly_stateid; int /*<<< orphan*/  nfsly_flayrw; int /*<<< orphan*/  nfsly_flayread; } ;
struct nfsclds {int dummy; } ;
struct nfscldevinfo {int /*<<< orphan*/  nfsdi_deviceid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_NFSLAYRECALL ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int NFSLAYOUTIOMODE_READ ; 
 int NFSLAYOUTIOMODE_RW ; 
 int /*<<< orphan*/  NFSLAYOUTRETURN_FILE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int NFSLY_RECALL ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC4 (struct nfsclrecalllayout*,int /*<<< orphan*/ ) ; 
 struct nfsclrecalllayout* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfsclds*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct nfscllayout*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct nfsclrecalllayout*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

void
FUNC9(uint32_t op, uint32_t stat, struct nfscldevinfo *dp,
    struct nfscllayout *lyp, struct nfsclds *dsp)
{
	struct nfsclrecalllayout *recallp;
	uint32_t iomode;

	FUNC8("DS being disabled, error=%d\n", stat);
	/* Set up the return of the layout. */
	recallp = FUNC5(sizeof(*recallp), M_NFSLAYRECALL, M_WAITOK);
	iomode = 0;
	FUNC2();
	if ((lyp->nfsly_flags & NFSLY_RECALL) == 0) {
		if (!FUNC0(&lyp->nfsly_flayread))
			iomode |= NFSLAYOUTIOMODE_READ;
		if (!FUNC0(&lyp->nfsly_flayrw))
			iomode |= NFSLAYOUTIOMODE_RW;
		(void)FUNC7(NFSLAYOUTRETURN_FILE, lyp, iomode,
		    0, UINT64_MAX, lyp->nfsly_stateid.seqid, stat, op,
		    dp->nfsdi_deviceid, recallp);
		FUNC3();
		FUNC1(4, "nfscl_dserr recall iomode=%d\n", iomode);
	} else {
		FUNC3();
		FUNC4(recallp, M_NFSLAYRECALL);
	}

	/* And shut the TCP connection down. */
	FUNC6(dsp);
}