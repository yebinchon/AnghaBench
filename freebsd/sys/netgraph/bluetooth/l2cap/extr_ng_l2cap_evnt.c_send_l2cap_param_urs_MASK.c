#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int /*<<< orphan*/  ng_l2cap_con_p ;
typedef  TYPE_1__* ng_l2cap_cmd_p ;
struct TYPE_5__ {int /*<<< orphan*/ * aux; int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NG_L2CAP_CMD_PARAM_UPDATE_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC5(ng_l2cap_con_p con, u_int8_t ident,
		     u_int16_t result)
{
	ng_l2cap_cmd_p	cmd = NULL;

	cmd = FUNC4(con, NULL, ident,
			       NG_L2CAP_CMD_PARAM_UPDATE_RESPONSE,
			       0);
	if (cmd == NULL) {

		return (ENOMEM);
	}

	FUNC0(cmd->aux, cmd->ident, result);
	if (cmd->aux == NULL) {
		FUNC1(cmd);

		return (ENOBUFS);
	}

	/* Link command to the queue */
	FUNC2(con, cmd);
	FUNC3(con);

	return (0);
}