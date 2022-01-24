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
struct ip_fw_chain {int n_rules; struct ip_fw** map; } ;
struct ip_fw {int /*<<< orphan*/  set; } ;
struct TYPE_5__ {int /*<<< orphan*/  new_set; } ;
typedef  TYPE_1__ ipfw_range_tlv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 scalar_t__ FUNC2 (struct ip_fw*,TYPE_1__*) ; 
 int FUNC3 (struct ip_fw_chain*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(struct ip_fw_chain *chain, ipfw_range_tlv *rt)
{
	struct ip_fw *rule;
	int i;

	FUNC0(chain);

	/*
	 * Move rules with matching paramenerts to a new set.
	 * This one is much more complex. We have to ensure
	 * that all referenced tables (if any) are referenced
	 * by given rule subset only. Otherwise, we can't move
	 * them to new set and have to return error.
	 */
	if ((i = FUNC3(chain, rt)) != 0) {
		FUNC1(chain);
		return (i);
	}

	/* XXX: We have to do swap holding WLOCK */
	for (i = 0; i < chain->n_rules; i++) {
		rule = chain->map[i];
		if (FUNC2(rule, rt) == 0)
			continue;
		rule->set = rt->new_set;
	}

	FUNC1(chain);

	return (0);
}