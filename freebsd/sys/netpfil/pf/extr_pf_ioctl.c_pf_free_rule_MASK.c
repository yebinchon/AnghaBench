#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  list; } ;
struct TYPE_11__ {scalar_t__ tbl; int /*<<< orphan*/  dyn; } ;
struct TYPE_12__ {int type; TYPE_4__ p; } ;
struct TYPE_13__ {TYPE_5__ addr; } ;
struct TYPE_8__ {scalar_t__ tbl; int /*<<< orphan*/  dyn; } ;
struct TYPE_9__ {int type; TYPE_1__ p; } ;
struct TYPE_10__ {TYPE_2__ addr; } ;
struct pf_rule {scalar_t__ pqid; scalar_t__ qid; int /*<<< orphan*/  src_nodes; int /*<<< orphan*/  states_tot; int /*<<< orphan*/  states_cur; TYPE_7__ rpool; scalar_t__ kif; scalar_t__ overload_tbl; TYPE_6__ dst; TYPE_3__ src; scalar_t__ match_tag; scalar_t__ tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PFRULE ; 
#define  PF_ADDR_DYNIFTL 129 
#define  PF_ADDR_TABLE 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  V_pf_tags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pf_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pf_rule*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 

void
FUNC10(struct pf_rule *rule)
{

	FUNC0();

	if (rule->tag)
		FUNC9(&V_pf_tags, rule->tag);
	if (rule->match_tag)
		FUNC9(&V_pf_tags, rule->match_tag);
#ifdef ALTQ
	if (rule->pqid != rule->qid)
		pf_qid_unref(rule->pqid);
	pf_qid_unref(rule->qid);
#endif
	switch (rule->src.addr.type) {
	case PF_ADDR_DYNIFTL:
		FUNC6(rule->src.addr.p.dyn);
		break;
	case PF_ADDR_TABLE:
		FUNC8(rule->src.addr.p.tbl);
		break;
	}
	switch (rule->dst.addr.type) {
	case PF_ADDR_DYNIFTL:
		FUNC6(rule->dst.addr.p.dyn);
		break;
	case PF_ADDR_TABLE:
		FUNC8(rule->dst.addr.p.tbl);
		break;
	}
	if (rule->overload_tbl)
		FUNC8(rule->overload_tbl);
	if (rule->kif)
		FUNC7(rule->kif);
	FUNC3(rule);
	FUNC4(&rule->rpool.list);
	FUNC1(rule->states_cur);
	FUNC1(rule->states_tot);
	FUNC1(rule->src_nodes);
	FUNC2(rule, M_PFRULE);
}