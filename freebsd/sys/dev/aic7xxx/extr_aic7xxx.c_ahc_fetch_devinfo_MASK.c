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
typedef  int u_int ;
struct ahc_softc {int features; } ;
struct ahc_devinfo {int dummy; } ;
typedef  scalar_t__ role_t ;

/* Variables and functions */
 int AHC_MULTI_TID ; 
 int AHC_ULTRA2 ; 
 int CMDPHASE_PENDING ; 
 int NO_DISCONNECT ; 
 int OID ; 
 scalar_t__ ROLE_INITIATOR ; 
 scalar_t__ ROLE_TARGET ; 
 int /*<<< orphan*/  SAVED_LUN ; 
 int /*<<< orphan*/  SAVED_SCSIID ; 
 int /*<<< orphan*/  SCSIID ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,int) ; 
 int /*<<< orphan*/  SCSIID_ULTRA2 ; 
 int /*<<< orphan*/  SEQ_FLAGS ; 
 int /*<<< orphan*/  SSTAT0 ; 
 int TARGET ; 
 int /*<<< orphan*/  TARGIDIN ; 
 int TARG_CMD_PENDING ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_devinfo*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ahc_softc *ahc, struct ahc_devinfo *devinfo)
{
	u_int	saved_scsiid;
	role_t	role;
	int	our_id;

	if (FUNC3(ahc, SSTAT0) & TARGET)
		role = ROLE_TARGET;
	else
		role = ROLE_INITIATOR;

	if (role == ROLE_TARGET
	 && (ahc->features & AHC_MULTI_TID) != 0
	 && (FUNC3(ahc, SEQ_FLAGS)
 	   & (CMDPHASE_PENDING|TARG_CMD_PENDING|NO_DISCONNECT)) != 0) {
		/* We were selected, so pull our id from TARGIDIN */
		our_id = FUNC3(ahc, TARGIDIN) & OID;
	} else if ((ahc->features & AHC_ULTRA2) != 0)
		our_id = FUNC3(ahc, SCSIID_ULTRA2) & OID;
	else
		our_id = FUNC3(ahc, SCSIID) & OID;

	saved_scsiid = FUNC3(ahc, SAVED_SCSIID);
	FUNC2(devinfo,
			    our_id,
			    FUNC1(ahc, saved_scsiid),
			    FUNC3(ahc, SAVED_LUN),
			    FUNC0(ahc, saved_scsiid),
			    role);
}