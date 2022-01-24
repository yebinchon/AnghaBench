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
typedef  int u16 ;
struct event_ring_entry {scalar_t__ protocol_id; int /*<<< orphan*/  data; int /*<<< orphan*/  fw_return_code; int /*<<< orphan*/  echo; int /*<<< orphan*/  flags; int /*<<< orphan*/  reserved0; int /*<<< orphan*/  opcode; } ;
struct ecore_hwfn {TYPE_1__* p_spq; } ;
struct ecore_chain {int dummy; } ;
struct ecore_eq {int /*<<< orphan*/ * p_fw_cons; struct ecore_chain chain; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int,...) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_MSG_SPQ ; 
 int /*<<< orphan*/  EVENT_RING_ENTRY_ASYNC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ PROTOCOLID_ISCSI ; 
 scalar_t__ FUNC5 (struct ecore_hwfn*,struct event_ring_entry*) ; 
 struct event_ring_entry* FUNC6 (struct ecore_chain*) ; 
 int FUNC7 (struct ecore_chain*) ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_chain*) ; 
 scalar_t__ FUNC9 (struct ecore_chain*) ; 
 int FUNC10 (struct ecore_chain*) ; 
 int /*<<< orphan*/  FUNC11 (struct ecore_chain*) ; 
 int /*<<< orphan*/  FUNC12 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ecore_hwfn*,struct event_ring_entry*) ; 
 scalar_t__ FUNC14 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct ecore_hwfn*) ; 

enum _ecore_status_t FUNC16(struct ecore_hwfn	*p_hwfn,
					 void                   *cookie)

{
	struct ecore_eq    *p_eq    = cookie;
	struct ecore_chain *p_chain = &p_eq->chain;
	enum _ecore_status_t rc = 0;

	/* take a snapshot of the FW consumer */
	u16 fw_cons_idx = FUNC2(*p_eq->p_fw_cons);

	FUNC0(p_hwfn, ECORE_MSG_SPQ, "fw_cons_idx %x\n", fw_cons_idx);

	/* Need to guarantee the fw_cons index we use points to a usuable
	 * element (to comply with our chain), so our macros would comply
	 */
	if ((fw_cons_idx & FUNC10(p_chain)) ==
	    FUNC10(p_chain)) {
		fw_cons_idx += FUNC9(p_chain);
	}

	/* Complete current segment of eq entries */
	while (fw_cons_idx != FUNC7(p_chain)) {
		struct event_ring_entry *p_eqe = FUNC6(p_chain);
		if (!p_eqe) {
			rc = ECORE_INVAL;
			break;
		}

		FUNC0(p_hwfn,
			   ECORE_MSG_SPQ,
			   "op %x prot %x res0 %x echo %x fwret %x flags %x\n",
			   p_eqe->opcode,	     /* Event Opcode */
			   p_eqe->protocol_id,	     /* Event Protocol ID */
			   p_eqe->reserved0,	     /* Reserved */
			   FUNC2(p_eqe->echo),/* Echo value from
							ramrod data on the host
						      */
			   p_eqe->fw_return_code,    /* FW return code for SP
							ramrods
						      */
			   p_eqe->flags);
#ifndef REMOVE_DBG
		if (p_eqe->protocol_id == PROTOCOLID_ISCSI)
			FUNC13(p_hwfn, p_eqe);
#endif

		if (FUNC1(p_eqe->flags, EVENT_RING_ENTRY_ASYNC)) {
			if (FUNC5(p_hwfn, p_eqe))
				rc = ECORE_INVAL;
		} else if (FUNC14(p_hwfn,
						p_eqe->echo,
						p_eqe->fw_return_code,
						&p_eqe->data)) {
			rc = ECORE_INVAL;
		}

		FUNC11(p_chain);
	}

	FUNC12(p_hwfn, FUNC8(p_chain));

	/* Attempt to post pending requests */
	FUNC3(&p_hwfn->p_spq->lock);
	rc = FUNC15(p_hwfn);
	FUNC4(&p_hwfn->p_spq->lock);

	return rc;
}