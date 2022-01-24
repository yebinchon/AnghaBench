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
struct pf_rulequeue {int dummy; } ;
struct pf_rule {int /*<<< orphan*/  rule_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  PFRULE_REFS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pf_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pf_rulequeue*,struct pf_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_pf_unlinked_rules ; 
 int /*<<< orphan*/  entries ; 

__attribute__((used)) static void
FUNC5(struct pf_rulequeue *rulequeue, struct pf_rule *rule)
{

	FUNC0();

	FUNC4(rulequeue, rule, entries);

	FUNC1();
	rule->rule_flag |= PFRULE_REFS;
	FUNC3(&V_pf_unlinked_rules, rule, entries);
	FUNC2();
}