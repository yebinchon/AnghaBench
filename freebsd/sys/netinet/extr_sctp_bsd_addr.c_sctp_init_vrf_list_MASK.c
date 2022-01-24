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

/* Variables and functions */
 int SCTP_MAX_VRF_ID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void
FUNC2(int vrfid)
{
	if (vrfid > SCTP_MAX_VRF_ID)
		/* can't do that */
		return;

	/* Don't care about return here */
	(void)FUNC0(vrfid);

	/*
	 * Now we need to build all the ifn's for this vrf and there
	 * addresses
	 */
	FUNC1(vrfid);
}