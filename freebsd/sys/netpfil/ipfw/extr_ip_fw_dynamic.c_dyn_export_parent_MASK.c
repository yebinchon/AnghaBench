#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint16_t ;
struct dyn_parent {int /*<<< orphan*/  hashval; int /*<<< orphan*/  rulenum; scalar_t__ expire; } ;
typedef  int /*<<< orphan*/  set ;
struct TYPE_3__ {char rule; struct TYPE_3__* next; int /*<<< orphan*/  bucket; scalar_t__ ack_rev; scalar_t__ ack_fwd; scalar_t__ state; int /*<<< orphan*/ * parent; scalar_t__ bcnt; scalar_t__ pcnt; scalar_t__ expire; void* count; void* kidx; int /*<<< orphan*/  dyn_type; } ;
typedef  TYPE_1__ ipfw_dyn_rule ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dyn_parent const*) ; 
 int /*<<< orphan*/  O_LIMIT_PARENT ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ time_uptime ; 

__attribute__((used)) static void
FUNC3(const struct dyn_parent *p, uint16_t kidx, uint8_t set,
    ipfw_dyn_rule *dst)
{

	dst->dyn_type = O_LIMIT_PARENT;
	dst->kidx = kidx;
	dst->count = (uint16_t)FUNC0(p);
	dst->expire = FUNC1(p->expire, time_uptime) ?  0:
	    p->expire - time_uptime;

	/* 'rule' is used to pass up the rule number and set */
	FUNC2(&dst->rule, &p->rulenum, sizeof(p->rulenum));

	/* store set number into high word of dst->rule pointer. */
	FUNC2((char *)&dst->rule + sizeof(p->rulenum), &set, sizeof(set));

	/* unused fields */
	dst->pcnt = 0;
	dst->bcnt = 0;
	dst->parent = NULL;
	dst->state = 0;
	dst->ack_fwd = 0;
	dst->ack_rev = 0;
	dst->bucket = p->hashval;
	/*
	 * The legacy userland code will interpret a NULL here as a marker
	 * for the last dynamic rule.
	 */
	dst->next = (ipfw_dyn_rule *)1;
}