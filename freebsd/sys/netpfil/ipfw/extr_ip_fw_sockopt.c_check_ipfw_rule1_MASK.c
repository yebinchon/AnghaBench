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
typedef  int /*<<< orphan*/  uint64_t ;
struct rule_check_info {int dummy; } ;
struct ip_fw_rule {int act_ofs; int cmd_len; int rulenum; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int EINVAL ; 
 int IPFW_DEFAULT_RULE ; 
 int /*<<< orphan*/  FUNC0 (struct ip_fw_rule*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct rule_check_info*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct ip_fw_rule *rule, int size,
    struct rule_check_info *ci)
{
	int l;

	if (size < sizeof(*rule)) {
		FUNC2("ipfw: rule too short\n");
		return (EINVAL);
	}

	/* Check for valid cmd_len */
	l = FUNC3(FUNC0(rule), sizeof(uint64_t));
	if (l != size) {
		FUNC2("ipfw: size mismatch (have %d want %d)\n", size, l);
		return (EINVAL);
	}
	if (rule->act_ofs >= rule->cmd_len) {
		FUNC2("ipfw: bogus action offset (%u > %u)\n",
		    rule->act_ofs, rule->cmd_len - 1);
		return (EINVAL);
	}

	if (rule->rulenum > IPFW_DEFAULT_RULE - 1)
		return (EINVAL);

	return (FUNC1(rule->cmd, rule->cmd_len, ci));
}