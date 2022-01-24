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
struct ip_fw_chain {int n_rules; int /*<<< orphan*/  static_len; scalar_t__ id; int /*<<< orphan*/  map; } ;
struct ip_fw {scalar_t__ id; int /*<<< orphan*/  set; int /*<<< orphan*/  rulenum; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IPFW_DEFAULT_RULE ; 
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int /*<<< orphan*/  RESVD_SET ; 
 scalar_t__ FUNC1 (struct ip_fw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ip_fw**,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw**,int /*<<< orphan*/ ) ; 
 struct ip_fw** FUNC4 (struct ip_fw_chain*,int,int) ; 
 struct ip_fw** FUNC5 (struct ip_fw_chain*,struct ip_fw**,int) ; 

int
FUNC6(struct ip_fw_chain *chain, struct ip_fw *rule,
    int locked)
{
	struct ip_fw **map;

	map = FUNC4(chain, 1, locked);
	if (map == NULL)
		return (ENOMEM);
	if (chain->n_rules > 0)
		FUNC2(chain->map, map,
		    chain->n_rules * sizeof(struct ip_fw *));
	map[chain->n_rules] = rule;
	rule->rulenum = IPFW_DEFAULT_RULE;
	rule->set = RESVD_SET;
	rule->id = chain->id + 1;
	/* We add rule in the end of chain, no need to update skipto cache */
	map = FUNC5(chain, map, chain->n_rules + 1);
	chain->static_len += FUNC1(rule);
	FUNC0(chain);
	FUNC3(map, M_IPFW);
	return (0);
}