#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_10__ {int wwnn; int wwpn; int /*<<< orphan*/  portid; } ;
struct TYPE_11__ {TYPE_3__ fc; } ;
struct TYPE_9__ {int Low; scalar_t__ High; } ;
struct TYPE_8__ {int Low; scalar_t__ High; } ;
struct TYPE_12__ {char* PageVersion; int PageType; int /*<<< orphan*/  PageNumber; int /*<<< orphan*/  PageLength; } ;
struct TYPE_13__ {int CurrentSpeed; int Flags; int /*<<< orphan*/  PortIdentifier; TYPE_2__ WWPN; TYPE_1__ WWNN; TYPE_5__ Header; } ;
struct mpt_softc {int mpt_fcport_speed; TYPE_4__ scinfo; int /*<<< orphan*/  dev; TYPE_7__ mpt_fcport_page0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MPI_CONFIG_PAGETYPE_FC_PORT ; 
#define  MPI_FCPORTPAGE0_CURRENT_SPEED_10GBIT 136 
#define  MPI_FCPORTPAGE0_CURRENT_SPEED_1GBIT 135 
#define  MPI_FCPORTPAGE0_CURRENT_SPEED_2GBIT 134 
#define  MPI_FCPORTPAGE0_CURRENT_SPEED_4GBIT 133 
#define  MPI_FCPORTPAGE0_FLAGS_ATTACH_FABRIC_DIRECT 132 
#define  MPI_FCPORTPAGE0_FLAGS_ATTACH_NO_INIT 131 
#define  MPI_FCPORTPAGE0_FLAGS_ATTACH_POINT_TO_POINT 130 
#define  MPI_FCPORTPAGE0_FLAGS_ATTACH_PRIVATE_LOOP 129 
#define  MPI_FCPORTPAGE0_FLAGS_ATTACH_PUBLIC_LOOP 128 
 int MPI_FCPORTPAGE0_FLAGS_ATTACH_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  MPT_PRT_DEBUG ; 
 int /*<<< orphan*/  MPT_PRT_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (struct mpt_softc*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mpt_softc*,char*) ; 
 int FUNC9 (struct mpt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct mpt_softc*,int /*<<< orphan*/ ,TYPE_5__*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC11(struct mpt_softc *mpt)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;
	char *topology = NULL;
	int rv;

	rv = FUNC9(mpt, MPI_CONFIG_PAGETYPE_FC_PORT, 0,
	    0, &mpt->mpt_fcport_page0.Header, FALSE, 5000);
	if (rv) {
		return (-1);
	}
	FUNC7(mpt, MPT_PRT_DEBUG, "FC Port Page 0 Header: %x %x %x %x\n",
		 mpt->mpt_fcport_page0.Header.PageVersion,
		 mpt->mpt_fcport_page0.Header.PageLength,
		 mpt->mpt_fcport_page0.Header.PageNumber,
		 mpt->mpt_fcport_page0.Header.PageType);


	rv = FUNC10(mpt, 0, &mpt->mpt_fcport_page0.Header,
	    sizeof(mpt->mpt_fcport_page0), FALSE, 5000);
	if (rv) {
		FUNC8(mpt, "failed to read FC Port Page 0\n");
		return (-1);
	}
	FUNC6(&mpt->mpt_fcport_page0);

	switch (mpt->mpt_fcport_page0.CurrentSpeed) {
	case MPI_FCPORTPAGE0_CURRENT_SPEED_1GBIT:
		mpt->mpt_fcport_speed = 1;
		break;
	case MPI_FCPORTPAGE0_CURRENT_SPEED_2GBIT:
		mpt->mpt_fcport_speed = 2;
		break;
	case MPI_FCPORTPAGE0_CURRENT_SPEED_10GBIT:
		mpt->mpt_fcport_speed = 10;
		break;
	case MPI_FCPORTPAGE0_CURRENT_SPEED_4GBIT:
		mpt->mpt_fcport_speed = 4;
		break;
	default:
		mpt->mpt_fcport_speed = 0;
		break;
	}

	switch (mpt->mpt_fcport_page0.Flags &
	    MPI_FCPORTPAGE0_FLAGS_ATTACH_TYPE_MASK) {
	case MPI_FCPORTPAGE0_FLAGS_ATTACH_NO_INIT:
		mpt->mpt_fcport_speed = 0;
		topology = "<NO LOOP>";
		break;
	case MPI_FCPORTPAGE0_FLAGS_ATTACH_POINT_TO_POINT:
		topology = "N-Port";
		break;
	case MPI_FCPORTPAGE0_FLAGS_ATTACH_PRIVATE_LOOP:
		topology = "NL-Port";
		break;
	case MPI_FCPORTPAGE0_FLAGS_ATTACH_FABRIC_DIRECT:
		topology = "F-Port";
		break;
	case MPI_FCPORTPAGE0_FLAGS_ATTACH_PUBLIC_LOOP:
		topology = "FL-Port";
		break;
	default:
		mpt->mpt_fcport_speed = 0;
		topology = "?";
		break;
	}

	mpt->scinfo.fc.wwnn = ((uint64_t)mpt->mpt_fcport_page0.WWNN.High << 32)
	    | mpt->mpt_fcport_page0.WWNN.Low;
	mpt->scinfo.fc.wwpn = ((uint64_t)mpt->mpt_fcport_page0.WWPN.High << 32)
	    | mpt->mpt_fcport_page0.WWPN.Low;
	mpt->scinfo.fc.portid = mpt->mpt_fcport_page0.PortIdentifier;

	FUNC7(mpt, MPT_PRT_INFO,
	    "FC Port Page 0: Topology <%s> WWNN 0x%16jx WWPN 0x%16jx "
	    "Speed %u-Gbit\n", topology,
	    (uintmax_t)mpt->scinfo.fc.wwnn, (uintmax_t)mpt->scinfo.fc.wwpn,
	    mpt->mpt_fcport_speed);
	FUNC1(mpt);
	ctx = FUNC4(mpt->dev);
	tree = FUNC5(mpt->dev);

	FUNC2(ctx, FUNC3(tree), OID_AUTO,
	    "wwnn", CTLFLAG_RD, &mpt->scinfo.fc.wwnn,
	    "World Wide Node Name");

	FUNC2(ctx, FUNC3(tree), OID_AUTO,
	     "wwpn", CTLFLAG_RD, &mpt->scinfo.fc.wwpn,
	     "World Wide Port Name");

	FUNC0(mpt);
	return (0);
}