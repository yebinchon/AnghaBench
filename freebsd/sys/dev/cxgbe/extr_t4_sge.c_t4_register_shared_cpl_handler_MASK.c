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
typedef  int /*<<< orphan*/ * cpl_handler_t ;

/* Variables and functions */
#define  CPL_ABORT_RPL_RSS 132 
#define  CPL_ACT_OPEN_RPL 131 
 int CPL_COOKIE_RESERVED ; 
#define  CPL_FW4_ACK 130 
#define  CPL_L2T_WRITE_RPL 129 
#define  CPL_SET_TCB_RPL 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NUM_CPL_COOKIES ; 
 int /*<<< orphan*/ * abort_rpl_rss_handlers ; 
 int /*<<< orphan*/ * act_open_rpl_handlers ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t*,uintptr_t) ; 
 int /*<<< orphan*/ * fw4_ack_handlers ; 
 int /*<<< orphan*/ * l2t_write_rpl_handlers ; 
 int FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * set_tcb_rpl_handlers ; 
 int /*<<< orphan*/ ** t4_cpl_handler ; 

void
FUNC3(int opcode, cpl_handler_t h, int cookie)
{
	uintptr_t *loc;

	FUNC0(opcode < FUNC2(t4_cpl_handler));
	FUNC0(cookie > CPL_COOKIE_RESERVED);
	FUNC0(cookie < NUM_CPL_COOKIES);
	FUNC0(t4_cpl_handler[opcode] != NULL);

	switch (opcode) {
	case CPL_SET_TCB_RPL:
		loc = (uintptr_t *)&set_tcb_rpl_handlers[cookie];
		break;
	case CPL_L2T_WRITE_RPL:
		loc = (uintptr_t *)&l2t_write_rpl_handlers[cookie];
		break;
	case CPL_ACT_OPEN_RPL:
		loc = (uintptr_t *)&act_open_rpl_handlers[cookie];
		break;
	case CPL_ABORT_RPL_RSS:
		loc = (uintptr_t *)&abort_rpl_rss_handlers[cookie];
		break;
	case CPL_FW4_ACK:
		loc = (uintptr_t *)&fw4_ack_handlers[cookie];
		break;
	default:
		FUNC0(0);
		return;
	}
	FUNC0(h == NULL || *loc == (uintptr_t)NULL);
	FUNC1(loc, (uintptr_t)h);
}