#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct ipfw_dyn_info {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct ip_fw_args {int /*<<< orphan*/  m; int /*<<< orphan*/  f_id; } ;
struct ip_fw {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  opcode; int /*<<< orphan*/  arg1; } ;
struct TYPE_5__ {TYPE_1__ o; scalar_t__ limit_mask; int /*<<< orphan*/  conn_limit; } ;
typedef  TYPE_2__ ipfw_insn_limit ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ip_fw_chain*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_LIMIT ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_args const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int,struct ip_fw*,struct ipfw_dyn_info*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct ip_fw_chain *chain, struct ip_fw *rule,
    const ipfw_insn_limit *cmd, const struct ip_fw_args *args,
    const void *ulp, int pktlen, struct ipfw_dyn_info *info,
    uint32_t tablearg)
{
	uint32_t limit;
	uint16_t limit_mask;

	if (cmd->o.opcode == O_LIMIT) {
		limit = FUNC0(chain, cmd->conn_limit, limit);
		limit_mask = cmd->limit_mask;
	} else {
		limit = 0;
		limit_mask = 0;
	}
	return (FUNC4(&args->f_id,
#ifdef INET6
	    IS_IP6_FLOW_ID(&args->f_id) ? dyn_getscopeid(args):
#endif
	    0, FUNC2(args->m), ulp, pktlen, rule, info, limit,
	    limit_mask, cmd->o.arg1, cmd->o.opcode));
}