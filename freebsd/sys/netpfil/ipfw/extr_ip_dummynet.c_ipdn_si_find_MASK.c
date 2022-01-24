#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ipfw_flow_id {int dummy; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  sched_mask; } ;
struct dn_schk {scalar_t__ siht; TYPE_1__ sch; } ;
struct dn_sch_inst {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNHT_INSERT ; 
 int DN_HAVE_MASK ; 
 struct dn_sch_inst* FUNC0 (scalar_t__,uintptr_t,int /*<<< orphan*/ ,struct dn_schk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ipfw_flow_id*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dn_schk*) ; 

struct dn_sch_inst *
FUNC3(struct dn_schk *s, struct ipfw_flow_id *id)
{

	if (s->sch.flags & DN_HAVE_MASK) {
		struct ipfw_flow_id id_t = *id;
		FUNC1(&s->sch.sched_mask, &id_t);
		return FUNC0(s->siht, (uintptr_t)&id_t,
			DNHT_INSERT, s);
	}
	if (!s->siht)
		s->siht = FUNC2(0, 0, s);
	return (struct dn_sch_inst *)s->siht;
}