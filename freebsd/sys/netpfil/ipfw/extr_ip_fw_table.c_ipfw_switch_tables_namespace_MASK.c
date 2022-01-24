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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct opcode_obj_rewrite {scalar_t__ opcode; scalar_t__ (* classifier ) (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ *) ;} ;
struct namedobj_instance {int dummy; } ;
struct named_object {scalar_t__ set; } ;
struct ip_fw_chain {int n_rules; struct ip_fw** map; } ;
struct ip_fw {int cmd_len; scalar_t__ set; TYPE_1__* cmd; } ;
struct TYPE_4__ {scalar_t__ opcode; } ;
typedef  TYPE_1__ ipfw_insn ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int EBUSY ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  IPFW_TLV_TBL_NAME ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 unsigned int V_fw_tables_sets ; 
 scalar_t__ FUNC4 (struct namedobj_instance*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct named_object* FUNC5 (struct namedobj_instance*,scalar_t__) ; 
 int FUNC6 (struct opcode_obj_rewrite*) ; 
 struct opcode_obj_rewrite* opcodes ; 
 scalar_t__ FUNC7 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_sets_cb ; 

int
FUNC8(struct ip_fw_chain *ch, unsigned int sets)
{
	struct opcode_obj_rewrite *rw;
	struct namedobj_instance *ni;
	struct named_object *no;
	struct ip_fw *rule;
	ipfw_insn *cmd;
	int cmdlen, i, l;
	uint16_t kidx;
	uint8_t subtype;

	FUNC2(ch);

	if (V_fw_tables_sets == sets) {
		FUNC3(ch);
		return (0);
	}
	ni = FUNC0(ch);
	if (sets == 0) {
		/*
		 * Prevent disabling sets support if we have some tables
		 * in not default sets.
		 */
		if (FUNC4(ni, test_sets_cb,
		    NULL, IPFW_TLV_TBL_NAME) != 0) {
			FUNC3(ch);
			return (EBUSY);
		}
	}
	/*
	 * Scan all rules and examine tables opcodes.
	 */
	for (i = 0; i < ch->n_rules; i++) {
		rule = ch->map[i];

		l = rule->cmd_len;
		cmd = rule->cmd;
		cmdlen = 0;
		for ( ;	l > 0 ; l -= cmdlen, cmd += cmdlen) {
			cmdlen = FUNC1(cmd);
			/* Check only tables opcodes */
			for (kidx = 0, rw = opcodes;
			    rw < opcodes + FUNC6(opcodes); rw++) {
				if (rw->opcode != cmd->opcode)
					continue;
				if (rw->classifier(cmd, &kidx, &subtype) == 0)
					break;
			}
			if (kidx == 0)
				continue;
			no = FUNC5(ni, kidx);
			/* Check if both table object and rule has the set 0 */
			if (no->set != 0 || rule->set != 0) {
				FUNC3(ch);
				return (EBUSY);
			}

		}
	}
	V_fw_tables_sets = sets;
	FUNC3(ch);
	return (0);
}