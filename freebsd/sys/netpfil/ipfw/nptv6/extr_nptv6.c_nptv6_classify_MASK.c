#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ opcode; scalar_t__ arg1; } ;
typedef  TYPE_1__ ipfw_insn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ O_EXTERNAL_ACTION ; 
 scalar_t__ V_nptv6_eid ; 

__attribute__((used)) static int
FUNC1(ipfw_insn *cmd, uint16_t *puidx, uint8_t *ptype)
{
	ipfw_insn *icmd;

	icmd = cmd - 1;
	FUNC0("opcode %d, arg1 %d, opcode0 %d, arg1 %d",
	    cmd->opcode, cmd->arg1, icmd->opcode, icmd->arg1);
	if (icmd->opcode != O_EXTERNAL_ACTION ||
	    icmd->arg1 != V_nptv6_eid)
		return (1);

	*puidx = cmd->arg1;
	*ptype = 0;
	return (0);
}