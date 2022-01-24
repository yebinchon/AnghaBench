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
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  int u_int32_t ;
struct ip_fw_chain {int n_rules; struct ip_fw** map; } ;
struct ip_fw {int set; scalar_t__ rulenum; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int LOG_NOTICE ; 
 int LOG_SECURITY ; 
 int RESVD_SET ; 
 scalar_t__ V_fw_verbose ; 
 scalar_t__ V_norule_counter ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,...) ; 

__attribute__((used)) static int
FUNC4(struct ip_fw_chain *chain, u_int32_t arg, int log_only)
{
	struct ip_fw *rule;
	char *msg;
	int i;

	uint16_t rulenum = arg & 0xffff;
	uint8_t set = (arg >> 16) & 0xff;
	uint8_t cmd = (arg >> 24) & 0xff;

	if (cmd > 1)
		return (EINVAL);
	if (cmd == 1 && set > RESVD_SET)
		return (EINVAL);

	FUNC0(chain);
	if (rulenum == 0) {
		V_norule_counter = 0;
		for (i = 0; i < chain->n_rules; i++) {
			rule = chain->map[i];
			/* Skip rules not in our set. */
			if (cmd == 1 && rule->set != set)
				continue;
			FUNC2(rule, log_only);
		}
		msg = log_only ? "All logging counts reset" :
		    "Accounting cleared";
	} else {
		int cleared = 0;
		for (i = 0; i < chain->n_rules; i++) {
			rule = chain->map[i];
			if (rule->rulenum == rulenum) {
				if (cmd == 0 || rule->set == set)
					FUNC2(rule, log_only);
				cleared = 1;
			}
			if (rule->rulenum > rulenum)
				break;
		}
		if (!cleared) {	/* we did not find any matching rules */
			FUNC1(chain);
			return (EINVAL);
		}
		msg = log_only ? "logging count reset" : "cleared";
	}
	FUNC1(chain);

	if (V_fw_verbose) {
		int lev = LOG_SECURITY | LOG_NOTICE;

		if (rulenum)
			FUNC3(lev, "ipfw: Entry %d %s.\n", rulenum, msg);
		else
			FUNC3(lev, "ipfw: %s.\n", msg);
	}
	return (0);
}