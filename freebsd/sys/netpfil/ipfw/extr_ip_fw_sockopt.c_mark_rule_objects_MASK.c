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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct opcode_obj_rewrite {int /*<<< orphan*/  etlv; } ;
struct ip_fw_chain {int dummy; } ;
struct ip_fw {int cmd_len; int /*<<< orphan*/ * cmd; } ;
struct dump_args {int /*<<< orphan*/  tcount; int /*<<< orphan*/  bmask; } ;
typedef  int /*<<< orphan*/  ipfw_insn ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct opcode_obj_rewrite* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ip_fw_chain *ch, struct ip_fw *rule,
    struct dump_args *da)
{
	struct opcode_obj_rewrite *rw;
	ipfw_insn *cmd;
	int cmdlen, l;
	uint16_t kidx;
	uint8_t subtype;

	l = rule->cmd_len;
	cmd = rule->cmd;
	cmdlen = 0;
	for ( ;	l > 0 ; l -= cmdlen, cmd += cmdlen) {
		cmdlen = FUNC0(cmd);

		rw = FUNC1(cmd, &kidx, &subtype);
		if (rw == NULL)
			continue;

		if (FUNC2(da->bmask, rw->etlv, kidx))
			da->tcount++;
	}
}