#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ get_link_status; } ;
struct TYPE_5__ {scalar_t__ adapter_stopped; TYPE_1__ mac; } ;
struct adapter {int link_speed; scalar_t__ link_active; scalar_t__ link_up; TYPE_2__ hw; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* if_init ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 scalar_t__ TRUE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC4(ctx);
	device_t       dev = FUNC2(ctx);
	s32            status;

	adapter->hw.mac.get_link_status = TRUE;

	status = FUNC6(&adapter->hw, &adapter->link_speed,
	    &adapter->link_up, FALSE);

	if (status != IXGBE_SUCCESS && adapter->hw.adapter_stopped == FALSE) {
		/* Mailbox's Clear To Send status is lost or timeout occurred.
		 * We need reinitialization. */
		FUNC3(ctx)->if_init(ctx);
	}

	if (adapter->link_up) {
		if (adapter->link_active == FALSE) {
			if (bootverbose)
				FUNC1(dev, "Link is up %d Gbps %s \n",
				    ((adapter->link_speed == 128) ? 10 : 1),
				    "Full Duplex");
			adapter->link_active = TRUE;
			FUNC5(ctx, LINK_STATE_UP,
			    FUNC0(10));
		}
	} else { /* Link down */
		if (adapter->link_active == TRUE) {
			if (bootverbose)
				FUNC1(dev, "Link is Down\n");
			FUNC5(ctx, LINK_STATE_DOWN,  0);
			adapter->link_active = FALSE;
		}
	}

	/* Stats Update */
	FUNC7(adapter);
}