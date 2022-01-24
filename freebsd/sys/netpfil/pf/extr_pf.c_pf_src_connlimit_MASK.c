#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_6__* ptr; } ;
struct TYPE_11__ {int /*<<< orphan*/  state; } ;
struct TYPE_10__ {int tcp_est; int /*<<< orphan*/  state; } ;
struct pf_state {int /*<<< orphan*/  direction; TYPE_7__ rule; TYPE_5__** key; TYPE_4__* src_node; TYPE_3__ dst; TYPE_2__ src; int /*<<< orphan*/  timeout; } ;
struct pf_overload_entry {int /*<<< orphan*/  dir; TYPE_6__* rule; int /*<<< orphan*/  af; int /*<<< orphan*/  addr; } ;
struct TYPE_16__ {int /*<<< orphan*/ * lcounters; } ;
struct TYPE_9__ {scalar_t__ limit; } ;
struct TYPE_14__ {scalar_t__ max_src_conn; int /*<<< orphan*/ * overload_tbl; TYPE_1__ max_src_conn_rate; } ;
struct TYPE_13__ {int /*<<< orphan*/  af; } ;
struct TYPE_12__ {scalar_t__ conn; int /*<<< orphan*/  addr; int /*<<< orphan*/  conn_rate; } ;

/* Variables and functions */
 size_t LCNT_SRCCONN ; 
 size_t LCNT_SRCCONNRATE ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_PFTEMP ; 
 int /*<<< orphan*/  PFTM_PURGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t PF_SK_WIRE ; 
 int /*<<< orphan*/  FUNC2 (struct pf_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pf_overload_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCPS_CLOSED ; 
 int /*<<< orphan*/  V_pf_overloadqueue ; 
 int /*<<< orphan*/  V_pf_overloadtask ; 
 TYPE_8__ V_pf_status ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct pf_overload_entry* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

__attribute__((used)) static int
FUNC10(struct pf_state **state)
{
	struct pf_overload_entry *pfoe;
	int bad = 0;

	FUNC2(*state);

	(*state)->src_node->conn++;
	(*state)->src.tcp_est = 1;
	FUNC7(&(*state)->src_node->conn_rate);

	if ((*state)->rule.ptr->max_src_conn &&
	    (*state)->rule.ptr->max_src_conn <
	    (*state)->src_node->conn) {
		FUNC5(V_pf_status.lcounters[LCNT_SRCCONN], 1);
		bad++;
	}

	if ((*state)->rule.ptr->max_src_conn_rate.limit &&
	    FUNC8(&(*state)->src_node->conn_rate)) {
		FUNC5(V_pf_status.lcounters[LCNT_SRCCONNRATE], 1);
		bad++;
	}

	if (!bad)
		return (0);

	/* Kill this state. */
	(*state)->timeout = PFTM_PURGE;
	(*state)->src.state = (*state)->dst.state = TCPS_CLOSED;

	if ((*state)->rule.ptr->overload_tbl == NULL)
		return (1);

	/* Schedule overloading and flushing task. */
	pfoe = FUNC6(sizeof(*pfoe), M_PFTEMP, M_NOWAIT);
	if (pfoe == NULL)
		return (1);	/* too bad :( */

	FUNC4(&(*state)->src_node->addr, &pfoe->addr, sizeof(pfoe->addr));
	pfoe->af = (*state)->key[PF_SK_WIRE]->af;
	pfoe->rule = (*state)->rule.ptr;
	pfoe->dir = (*state)->direction;
	FUNC0();
	FUNC3(&V_pf_overloadqueue, pfoe, next);
	FUNC1();
	FUNC9(taskqueue_swi, &V_pf_overloadtask);

	return (1);
}