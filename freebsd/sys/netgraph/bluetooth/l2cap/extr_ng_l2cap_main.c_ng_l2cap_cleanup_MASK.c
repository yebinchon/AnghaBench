#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ng_l2cap_p ;
typedef  TYPE_2__* ng_l2cap_con_p ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  con_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int NG_L2CAP_CON_AUTO_DISCON_TIMO ; 
 int NG_L2CAP_CON_LP_TIMO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC5(ng_l2cap_p l2cap)
{
	ng_l2cap_con_p	con = NULL;

	/* Clean up connection and channels */
	while (!FUNC0(&l2cap->con_list)) {
		con = FUNC1(&l2cap->con_list);

		if (con->flags & NG_L2CAP_CON_LP_TIMO)
			FUNC4(con);
		else if (con->flags & NG_L2CAP_CON_AUTO_DISCON_TIMO)
			FUNC3(con);

		/* Connection terminated by local host */
		FUNC2(con, 0x16);
	}
}