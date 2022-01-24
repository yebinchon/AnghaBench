#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mpt_softc {scalar_t__ do_cfg_role; int cfg_role; int role; } ;
typedef  int /*<<< orphan*/  fc ;
typedef  int U32 ;
struct TYPE_4__ {int Flags; int /*<<< orphan*/  Header; } ;
typedef  TYPE_1__ CONFIG_PAGE_FC_PORT_1 ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_READ_NVRAM ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_WRITE_NVRAM ; 
 int /*<<< orphan*/  MPI_CONFIG_PAGETYPE_FC_PORT ; 
 int MPI_FCPORTPAGE1_FLAGS_PROT_FCP_INIT ; 
 int MPI_FCPORTPAGE1_FLAGS_PROT_FCP_TARG ; 
 int MPI_FCPORTPAGE1_FLAGS_PROT_MASK ; 
 int MPI_FCPORTPAGE1_FLAGS_TARGET_MODE_OXID ; 
 int MPT_ROLE_INITIATOR ; 
 int MPT_ROLE_TARGET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct mpt_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*,char*) ; 
 int FUNC4 (struct mpt_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct mpt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct mpt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct mpt_softc *mpt)
{
	CONFIG_PAGE_FC_PORT_1 fc;
	U32 fl;
	int r, doit = 0;
	int role;

	r = FUNC4(mpt, MPI_CONFIG_PAGETYPE_FC_PORT, 1, 0,
	    &fc.Header, FALSE, 5000);
	if (r) {
		FUNC3(mpt, "failed to read FC page 1 header\n");
		return (FUNC2(mpt, 1));
	}

	r = FUNC5(mpt, MPI_CONFIG_ACTION_PAGE_READ_NVRAM, 0,
	    &fc.Header, sizeof (fc), FALSE, 5000);
	if (r) {
		FUNC3(mpt, "failed to read FC page 1\n");
		return (FUNC2(mpt, 1));
	}
	FUNC1(&fc);

	/*
	 * Check our flags to make sure we support the role we want.
	 */
	doit = 0;
	role = 0;
	fl = fc.Flags;

	if (fl & MPI_FCPORTPAGE1_FLAGS_PROT_FCP_INIT) {
		role |= MPT_ROLE_INITIATOR;
	}
	if (fl & MPI_FCPORTPAGE1_FLAGS_PROT_FCP_TARG) {
		role |= MPT_ROLE_TARGET;
	}

	fl &= ~MPI_FCPORTPAGE1_FLAGS_PROT_MASK;

	if (mpt->do_cfg_role == 0) {
		role = mpt->cfg_role;
	} else {
		mpt->do_cfg_role = 0;
	}

	if (role != mpt->cfg_role) {
		if (mpt->cfg_role & MPT_ROLE_INITIATOR) {
			if ((role & MPT_ROLE_INITIATOR) == 0) {
				FUNC3(mpt, "adding initiator role\n");
				fl |= MPI_FCPORTPAGE1_FLAGS_PROT_FCP_INIT;
				doit++;
			} else {
				FUNC3(mpt, "keeping initiator role\n");
			}
		} else if (role & MPT_ROLE_INITIATOR) {
			FUNC3(mpt, "removing initiator role\n");
			doit++;
		}
		if (mpt->cfg_role & MPT_ROLE_TARGET) {
			if ((role & MPT_ROLE_TARGET) == 0) {
				FUNC3(mpt, "adding target role\n");
				fl |= MPI_FCPORTPAGE1_FLAGS_PROT_FCP_TARG;
				doit++;
			} else {
				FUNC3(mpt, "keeping target role\n");
			}
		} else if (role & MPT_ROLE_TARGET) {
			FUNC3(mpt, "removing target role\n");
			doit++;
		}
		mpt->role = mpt->cfg_role;
	}

	if (fl & MPI_FCPORTPAGE1_FLAGS_PROT_FCP_TARG) {
		if ((fl & MPI_FCPORTPAGE1_FLAGS_TARGET_MODE_OXID) == 0) {
			FUNC3(mpt, "adding OXID option\n");
			fl |= MPI_FCPORTPAGE1_FLAGS_TARGET_MODE_OXID;
			doit++;
		}
	}

	if (doit) {
		fc.Flags = fl;
		FUNC0(&fc);
		r = FUNC6(mpt,
		    MPI_CONFIG_ACTION_PAGE_WRITE_NVRAM, 0, &fc.Header,
		    sizeof(fc), FALSE, 5000);
		if (r != 0) {
			FUNC3(mpt, "failed to update NVRAM with changes\n");
			return (0);
		}
		FUNC3(mpt, "NOTE: NVRAM changes will not take "
		    "effect until next reboot or IOC reset\n");
	}
	return (0);
}