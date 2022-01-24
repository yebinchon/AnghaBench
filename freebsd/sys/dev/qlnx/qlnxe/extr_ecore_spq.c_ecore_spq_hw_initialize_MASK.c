#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {int /*<<< orphan*/  p_phys_addr; } ;
struct ecore_spq {TYPE_2__ chain; int /*<<< orphan*/  cid; } ;
struct ecore_hwfn {TYPE_5__* p_consq; int /*<<< orphan*/  p_dev; } ;
struct ecore_cxt_info {struct e4_core_conn_context* p_cxt; int /*<<< orphan*/  iid; } ;
struct TYPE_8__ {int /*<<< orphan*/  consolid_base_addr; int /*<<< orphan*/  spq_base_hi; int /*<<< orphan*/  spq_base_lo; } ;
struct TYPE_6__ {int /*<<< orphan*/  physical_q0; int /*<<< orphan*/  flags9; int /*<<< orphan*/  flags1; int /*<<< orphan*/  flags10; } ;
struct e4_core_conn_context {TYPE_3__ xstorm_st_context; TYPE_1__ xstorm_ag_context; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_9__ {int /*<<< orphan*/  p_phys_addr; } ;
struct TYPE_10__ {TYPE_4__ chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E4_XSTORM_CORE_CONN_AG_CTX_CONSOLID_PROD_CF_EN ; 
 int /*<<< orphan*/  E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_ACTIVE ; 
 int /*<<< orphan*/  E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_EN ; 
 int /*<<< orphan*/  ECORE_E5_MISSING_CODE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct e4_core_conn_context*,int) ; 
 int /*<<< orphan*/  PQ_FLAGS_LB ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct ecore_hwfn*,struct ecore_cxt_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct ecore_hwfn *p_hwfn,
				    struct ecore_spq  *p_spq)
{
	struct e4_core_conn_context *p_cxt;
	struct ecore_cxt_info cxt_info;
	u16 physical_q;
	enum _ecore_status_t rc;

	cxt_info.iid = p_spq->cid;

	rc = FUNC9(p_hwfn, &cxt_info);

	if (rc < 0) {
		FUNC3(p_hwfn, true, "Cannot find context info for cid=%d\n",
			  p_spq->cid);
		return;
	}

	p_cxt = cxt_info.p_cxt;

	/* @@@TBD we zero the context until we have ilt_reset implemented. */
	FUNC7(p_cxt, sizeof(*p_cxt));

	if (FUNC5(p_hwfn->p_dev) || FUNC4(p_hwfn->p_dev)) {
		FUNC8(p_cxt->xstorm_ag_context.flags10,
			  E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_EN, 1);
		FUNC8(p_cxt->xstorm_ag_context.flags1,
			  E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_ACTIVE, 1);
		/*SET_FIELD(p_cxt->xstorm_ag_context.flags10,
			  E4_XSTORM_CORE_CONN_AG_CTX_SLOW_PATH_EN, 1);*/
		FUNC8(p_cxt->xstorm_ag_context.flags9,
			  E4_XSTORM_CORE_CONN_AG_CTX_CONSOLID_PROD_CF_EN, 1);
	} else { /* E5 */
		ECORE_E5_MISSING_CODE;
	}

	/* CDU validation - FIXME currently disabled */

	/* QM physical queue */
	physical_q = FUNC10(p_hwfn, PQ_FLAGS_LB);
	p_cxt->xstorm_ag_context.physical_q0 = FUNC6(physical_q);

	p_cxt->xstorm_st_context.spq_base_lo =
		FUNC1(p_spq->chain.p_phys_addr);
	p_cxt->xstorm_st_context.spq_base_hi =
		FUNC0(p_spq->chain.p_phys_addr);

	FUNC2(p_cxt->xstorm_st_context.consolid_base_addr,
		       p_hwfn->p_consq->chain.p_phys_addr);
}