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
struct ecore_hwfn {int /*<<< orphan*/  p_dev; struct ecore_consq* p_consq; } ;
struct ecore_consq {int /*<<< orphan*/  chain; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  ECORE_CHAIN_CNT_TYPE_U16 ; 
 int /*<<< orphan*/  ECORE_CHAIN_MODE_PBL ; 
 int ECORE_CHAIN_PAGE_SIZE ; 
 int /*<<< orphan*/  ECORE_CHAIN_USE_TO_PRODUCE ; 
 int ECORE_NOMEM ; 
 scalar_t__ ECORE_SUCCESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ecore_consq*) ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 struct ecore_consq* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

enum _ecore_status_t FUNC4(struct ecore_hwfn *p_hwfn)
{
	struct ecore_consq *p_consq;

	/* Allocate ConsQ struct */
	p_consq = FUNC2(p_hwfn->p_dev, GFP_KERNEL, sizeof(*p_consq));
	if (!p_consq) {
		FUNC0(p_hwfn, false,
			  "Failed to allocate `struct ecore_consq'\n");
		return ECORE_NOMEM;
	}

	/* Allocate and initialize EQ chain*/
	if (FUNC3(p_hwfn->p_dev,
			      ECORE_CHAIN_USE_TO_PRODUCE,
			      ECORE_CHAIN_MODE_PBL,
			      ECORE_CHAIN_CNT_TYPE_U16,
			      ECORE_CHAIN_PAGE_SIZE/0x80,
			      0x80,
			      &p_consq->chain, OSAL_NULL) != ECORE_SUCCESS) {
		FUNC0(p_hwfn, false, "Failed to allocate consq chain");
		goto consq_allocate_fail;
	}

	p_hwfn->p_consq = p_consq;
	return ECORE_SUCCESS;

consq_allocate_fail:
	FUNC1(p_hwfn->p_dev, p_consq);
	return ECORE_NOMEM;
}