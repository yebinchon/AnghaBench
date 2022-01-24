#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ng_l2cap_cmd_p ;
typedef  TYPE_2__* ng_l2cap_chan_p ;
struct TYPE_16__ {int /*<<< orphan*/  cmd_list; } ;
struct TYPE_15__ {TYPE_6__* con; } ;
struct TYPE_14__ {int flags; TYPE_2__* ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH_L2CAP ; 
 int NG_L2CAP_CMD_PENDING ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void
FUNC9(ng_l2cap_chan_p ch)
{
	ng_l2cap_cmd_p	f = NULL, n = NULL;

	f = FUNC1(&ch->con->cmd_list);

	while (f != NULL) {
		n = FUNC2(f, next);

		if (f->ch == ch) {
			FUNC8(f);
			if (f->flags & NG_L2CAP_CMD_PENDING)
				FUNC5(f);
			FUNC7(f);
		}

		f = n;
	}

	FUNC0(ch, next);

	FUNC6(ch->con);

	FUNC3(ch, sizeof(*ch));
	FUNC4(ch, M_NETGRAPH_L2CAP);
}