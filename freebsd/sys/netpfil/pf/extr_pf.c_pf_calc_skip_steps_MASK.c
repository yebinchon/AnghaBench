#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pf_rulequeue {int dummy; } ;
struct TYPE_4__ {scalar_t__ neg; scalar_t__* port; scalar_t__ port_op; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {scalar_t__ neg; scalar_t__* port; scalar_t__ port_op; int /*<<< orphan*/  addr; } ;
struct pf_rule {scalar_t__ kif; scalar_t__ ifnot; scalar_t__ direction; scalar_t__ af; scalar_t__ proto; TYPE_2__ dst; TYPE_1__ src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PF_SKIP_AF ; 
 int PF_SKIP_COUNT ; 
 int PF_SKIP_DIR ; 
 int PF_SKIP_DST_ADDR ; 
 int PF_SKIP_DST_PORT ; 
 int PF_SKIP_IFP ; 
 int PF_SKIP_PROTO ; 
 int PF_SKIP_SRC_ADDR ; 
 int PF_SKIP_SRC_PORT ; 
 struct pf_rule* FUNC1 (struct pf_rulequeue*) ; 
 struct pf_rule* FUNC2 (struct pf_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(struct pf_rulequeue *rules)
{
	struct pf_rule *cur, *prev, *head[PF_SKIP_COUNT];
	int i;

	cur = FUNC1(rules);
	prev = cur;
	for (i = 0; i < PF_SKIP_COUNT; ++i)
		head[i] = cur;
	while (cur != NULL) {

		if (cur->kif != prev->kif || cur->ifnot != prev->ifnot)
			FUNC0(PF_SKIP_IFP);
		if (cur->direction != prev->direction)
			FUNC0(PF_SKIP_DIR);
		if (cur->af != prev->af)
			FUNC0(PF_SKIP_AF);
		if (cur->proto != prev->proto)
			FUNC0(PF_SKIP_PROTO);
		if (cur->src.neg != prev->src.neg ||
		    FUNC3(&cur->src.addr, &prev->src.addr))
			FUNC0(PF_SKIP_SRC_ADDR);
		if (cur->src.port[0] != prev->src.port[0] ||
		    cur->src.port[1] != prev->src.port[1] ||
		    cur->src.port_op != prev->src.port_op)
			FUNC0(PF_SKIP_SRC_PORT);
		if (cur->dst.neg != prev->dst.neg ||
		    FUNC3(&cur->dst.addr, &prev->dst.addr))
			FUNC0(PF_SKIP_DST_ADDR);
		if (cur->dst.port[0] != prev->dst.port[0] ||
		    cur->dst.port[1] != prev->dst.port[1] ||
		    cur->dst.port_op != prev->dst.port_op)
			FUNC0(PF_SKIP_DST_PORT);

		prev = cur;
		cur = FUNC2(cur, entries);
	}
	for (i = 0; i < PF_SKIP_COUNT; ++i)
		FUNC0(i);
}