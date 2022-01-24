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
struct ahc_softc {int features; int our_id; } ;

/* Variables and functions */
 int AHC_MULTI_TID ; 
 int AHC_ULTRA2 ; 
 int OID ; 
 int /*<<< orphan*/  SCSIID ; 
 int /*<<< orphan*/  SCSIID_ULTRA2 ; 
 int TID ; 
 int FUNC0 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct ahc_softc *ahc, u_int targid_mask)
{
	u_int scsiid_mask;
	u_int scsiid;

	if ((ahc->features & AHC_MULTI_TID) == 0)
		FUNC3("ahc_update_scsiid called on non-multitid unit\n");

	/*
	 * Since we will rely on the TARGID mask
	 * for selection enables, ensure that OID
	 * in SCSIID is not set to some other ID
	 * that we don't want to allow selections on.
	 */
	if ((ahc->features & AHC_ULTRA2) != 0)
		scsiid = FUNC0(ahc, SCSIID_ULTRA2);
	else
		scsiid = FUNC0(ahc, SCSIID);
	scsiid_mask = 0x1 << (scsiid & OID);
	if ((targid_mask & scsiid_mask) == 0) {
		u_int our_id;

		/* ffs counts from 1 */
		our_id = FUNC2(targid_mask);
		if (our_id == 0)
			our_id = ahc->our_id;
		else
			our_id--;
		scsiid &= TID;
		scsiid |= our_id;
	}
	if ((ahc->features & AHC_ULTRA2) != 0)
		FUNC1(ahc, SCSIID_ULTRA2, scsiid);
	else
		FUNC1(ahc, SCSIID, scsiid);
}