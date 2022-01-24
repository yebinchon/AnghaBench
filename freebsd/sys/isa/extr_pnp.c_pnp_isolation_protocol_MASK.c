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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {int /*<<< orphan*/  vendor_id; } ;
typedef  TYPE_1__ pnp_id ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  PNP_CONFIG_CONTROL ; 
 int PNP_CONFIG_CONTROL_RESET_CSN ; 
 int PNP_CONFIG_CONTROL_WAIT_FOR_KEY ; 
 int PNP_MAX_CARDS ; 
 int /*<<< orphan*/  PNP_SERIAL_ISOLATION ; 
 int /*<<< orphan*/  PNP_SET_CSN ; 
 int /*<<< orphan*/  PNP_SET_RD_DATA ; 
 int /*<<< orphan*/  PNP_WAKE ; 
 int /*<<< orphan*/  _PNP_ADDRESS ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int pnp_rd_port ; 
 int FUNC6 (int /*<<< orphan*/ **,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static int
FUNC10(device_t parent)
{
	int csn;
	pnp_id id;
	int found = 0, len;
	u_char *resources = NULL;
	int space = 0;
	int error;

	/*
	 * Put all cards into the Sleep state so that we can clear
	 * their CSNs.
	 */
	FUNC7();

	/*
	 * Clear the CSN for all cards.
	 */
	FUNC8(PNP_CONFIG_CONTROL, PNP_CONFIG_CONTROL_RESET_CSN);

	/*
	 * Move all cards to the Isolation state.
	 */
	FUNC8(PNP_WAKE, 0);

	/*
	 * Tell them where the read point is going to be this time.
	 */
	FUNC8(PNP_SET_RD_DATA, pnp_rd_port);

	for (csn = 1; csn < PNP_MAX_CARDS; csn++) {
		/*
		 * Start the serial isolation protocol.
		 */
		FUNC2(_PNP_ADDRESS, PNP_SERIAL_ISOLATION);
		FUNC0(1000);	/* Delay 1 msec */

		if (FUNC5(&id)) {
			/*
			 * We have read the id from a card
			 * successfully. The card which won the
			 * isolation protocol will be in Isolation
			 * mode and all others will be in Sleep.
			 * Program the CSN of the isolated card
			 * (taking it to Config state) and read its
			 * resources, creating devices as we find
			 * logical devices on the card.
			 */
			FUNC8(PNP_SET_CSN, csn);
			if (bootverbose)
				FUNC9("Reading PnP configuration for %s.\n",
				    FUNC4(id.vendor_id));
			error = FUNC6(&resources, &space, &len);
			if (error)
				break;
			FUNC3(parent, &id, csn, resources, len);
			found++;
		} else
			break;

		/*
		 * Put this card back to the Sleep state and
		 * simultaneously move all cards which don't have a
		 * CSN yet to Isolation state.
		 */
		FUNC8(PNP_WAKE, 0);
	}

	/*
	 * Unless we have chosen the wrong read port, all cards will
	 * be in Sleep state. Put them back into WaitForKey for
	 * now. Their resources will be programmed later.
	 */
	FUNC8(PNP_CONFIG_CONTROL, PNP_CONFIG_CONTROL_WAIT_FOR_KEY);

	/*
	 * Cleanup.
	 */
	if (resources)
		FUNC1(resources, M_TEMP);

	return (found);
}