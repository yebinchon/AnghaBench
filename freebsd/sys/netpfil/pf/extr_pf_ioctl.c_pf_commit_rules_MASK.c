#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct pf_ruleset {TYPE_3__* rules; } ;
struct pf_rulequeue {int dummy; } ;
struct pf_rule {int dummy; } ;
struct TYPE_5__ {scalar_t__ ticket; scalar_t__ rcount; scalar_t__ open; struct pf_rule** ptr_array; struct pf_rulequeue* ptr; } ;
struct TYPE_4__ {scalar_t__ rcount; scalar_t__ ticket; struct pf_rulequeue* ptr; struct pf_rule** ptr_array; } ;
struct TYPE_6__ {TYPE_2__ inactive; TYPE_1__ active; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  M_TEMP ; 
 int PF_RULESET_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct pf_rule* FUNC1 (struct pf_rulequeue*) ; 
 int /*<<< orphan*/  FUNC2 (struct pf_rule**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pf_rulequeue*) ; 
 struct pf_ruleset* FUNC4 (char*) ; 
 struct pf_ruleset pf_main_ruleset ; 
 int /*<<< orphan*/  FUNC5 (struct pf_ruleset*) ; 
 int FUNC6 (struct pf_ruleset*) ; 
 int /*<<< orphan*/  FUNC7 (struct pf_rulequeue*,struct pf_rule*) ; 

__attribute__((used)) static int
FUNC8(u_int32_t ticket, int rs_num, char *anchor)
{
	struct pf_ruleset	*rs;
	struct pf_rule		*rule, **old_array;
	struct pf_rulequeue	*old_rules;
	int			 error;
	u_int32_t		 old_rcount;

	FUNC0();

	if (rs_num < 0 || rs_num >= PF_RULESET_MAX)
		return (EINVAL);
	rs = FUNC4(anchor);
	if (rs == NULL || !rs->rules[rs_num].inactive.open ||
	    ticket != rs->rules[rs_num].inactive.ticket)
		return (EBUSY);

	/* Calculate checksum for the main ruleset */
	if (rs == &pf_main_ruleset) {
		error = FUNC6(rs);
		if (error != 0)
			return (error);
	}

	/* Swap rules, keep the old. */
	old_rules = rs->rules[rs_num].active.ptr;
	old_rcount = rs->rules[rs_num].active.rcount;
	old_array = rs->rules[rs_num].active.ptr_array;

	rs->rules[rs_num].active.ptr =
	    rs->rules[rs_num].inactive.ptr;
	rs->rules[rs_num].active.ptr_array =
	    rs->rules[rs_num].inactive.ptr_array;
	rs->rules[rs_num].active.rcount =
	    rs->rules[rs_num].inactive.rcount;
	rs->rules[rs_num].inactive.ptr = old_rules;
	rs->rules[rs_num].inactive.ptr_array = old_array;
	rs->rules[rs_num].inactive.rcount = old_rcount;

	rs->rules[rs_num].active.ticket =
	    rs->rules[rs_num].inactive.ticket;
	FUNC3(rs->rules[rs_num].active.ptr);


	/* Purge the old rule list. */
	while ((rule = FUNC1(old_rules)) != NULL)
		FUNC7(old_rules, rule);
	if (rs->rules[rs_num].inactive.ptr_array)
		FUNC2(rs->rules[rs_num].inactive.ptr_array, M_TEMP);
	rs->rules[rs_num].inactive.ptr_array = NULL;
	rs->rules[rs_num].inactive.rcount = 0;
	rs->rules[rs_num].inactive.open = 0;
	FUNC5(rs);

	return (0);
}