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
struct ip_fw_chain {int n_rules; struct ip_fw** map; } ;
struct ip_fw {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ ipfw_range_tlv ;

/* Variables and functions */
 int /*<<< orphan*/  IPFW_RCFLAG_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw*,int) ; 
 scalar_t__ FUNC3 (struct ip_fw*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(struct ip_fw_chain *chain, ipfw_range_tlv *rt, int log_only)
{
	struct ip_fw *rule;
	int num;
	int i;

	num = 0;
	rt->flags |= IPFW_RCFLAG_DEFAULT;

	FUNC0(chain);	/* arbitrate writers */
	for (i = 0; i < chain->n_rules; i++) {
		rule = chain->map[i];
		if (FUNC3(rule, rt) == 0)
			continue;
		FUNC2(rule, log_only);
		num++;
	}
	FUNC1(chain);

	return (num);
}