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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {void* echo; } ;
struct slow_path_element {TYPE_2__ hdr; } ;
struct ecore_spq_entry {struct slow_path_element elem; } ;
struct core_db_data {int /*<<< orphan*/  agg_flags; int /*<<< orphan*/  params; void* spq_prod; } ;
struct ecore_spq {int /*<<< orphan*/  cid; int /*<<< orphan*/  db_addr_offset; struct core_db_data db_data; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; TYPE_1__* p_spq; } ;
struct ecore_chain {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {struct ecore_chain chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_MSG_SPQ ; 
 int ECORE_SUCCESS ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_chain*) ; 
 struct slow_path_element* FUNC6 (struct ecore_chain*) ; 

__attribute__((used)) static enum _ecore_status_t FUNC7(struct ecore_hwfn		*p_hwfn,
					      struct ecore_spq		*p_spq,
					      struct ecore_spq_entry	*p_ent)
{
	struct ecore_chain *p_chain = &p_hwfn->p_spq->chain;
	struct core_db_data *p_db_data = &p_spq->db_data;
	u16 echo = FUNC5(p_chain);
	struct slow_path_element *elem;

	p_ent->elem.hdr.echo = FUNC3(echo);
	elem = FUNC6(p_chain);
	if (!elem) {
		FUNC1(p_hwfn, true, "Failed to produce from SPQ chain\n");
		return ECORE_INVAL;
	}

	*elem = p_ent->elem; /* Struct assignment */

	p_db_data->spq_prod =
		FUNC3(FUNC5(p_chain));

	/* Make sure the SPQE is updated before the doorbell */
	FUNC4(p_hwfn->p_dev);

	FUNC0(p_hwfn, p_spq->db_addr_offset, *(u32 *)p_db_data);

	/* Make sure doorbell was rung */
	FUNC4(p_hwfn->p_dev);

	FUNC2(p_hwfn, ECORE_MSG_SPQ,
		   "Doorbelled [0x%08x, CID 0x%08x] with Flags: %02x agg_params: %02x, prod: %04x\n",
		   p_spq->db_addr_offset, p_spq->cid, p_db_data->params,
		   p_db_data->agg_flags, FUNC5(p_chain));

	return ECORE_SUCCESS;
}