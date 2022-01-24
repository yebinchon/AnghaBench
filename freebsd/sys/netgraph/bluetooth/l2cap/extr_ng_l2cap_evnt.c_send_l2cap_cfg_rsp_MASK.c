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
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  ng_l2cap_con_p ;
typedef  TYPE_1__* ng_l2cap_cmd_p ;
struct TYPE_5__ {int /*<<< orphan*/ * aux; int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  NG_L2CAP_CFG_RSP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC6(ng_l2cap_con_p con, u_int8_t ident, u_int16_t scid,
		u_int16_t result, struct mbuf *opt)
{
	ng_l2cap_cmd_p	cmd = NULL;

	cmd = FUNC5(con, NULL, ident, NG_L2CAP_CFG_RSP, 0);
	if (cmd == NULL) {
		FUNC0(opt);

		return (ENOMEM);
	}

	FUNC1(cmd->aux, cmd->ident, scid, 0, result, opt);
	if (cmd->aux == NULL) {
		FUNC2(cmd);

		return (ENOBUFS);
	}

	/* Link command to the queue */
	FUNC3(con, cmd);
	FUNC4(con);

	return (0);
}