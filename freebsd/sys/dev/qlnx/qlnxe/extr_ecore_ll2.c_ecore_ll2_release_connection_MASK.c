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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int b_cb_registred; int /*<<< orphan*/  rcq_chain; int /*<<< orphan*/  rxq_chain; int /*<<< orphan*/  descq_array; int /*<<< orphan*/  rx_sb_index; } ;
struct TYPE_3__ {int b_cb_registred; int /*<<< orphan*/  txq_chain; int /*<<< orphan*/  descq_array; int /*<<< orphan*/  tx_sb_index; } ;
struct ecore_ll2_info {int b_active; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cid; TYPE_2__ rx_queue; TYPE_1__ tx_queue; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ecore_ll2_info*) ; 
 scalar_t__ FUNC1 (struct ecore_ll2_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ecore_ll2_info* OSAL_NULL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 struct ecore_ll2_info* FUNC8 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,struct ecore_ll2_info*) ; 

void FUNC10(void *cxt,
				  u8 connection_handle)
{
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)cxt;
	struct ecore_ll2_info *p_ll2_conn = OSAL_NULL;

	p_ll2_conn = FUNC8(p_hwfn, connection_handle);
	if (p_ll2_conn == OSAL_NULL)
		return;

	if (FUNC0(p_ll2_conn)) {
		p_ll2_conn->rx_queue.b_cb_registred = false;
		FUNC7(p_hwfn,
					p_ll2_conn->rx_queue.rx_sb_index);
	}

	if (FUNC1(p_ll2_conn)) {
		p_ll2_conn->tx_queue.b_cb_registred = false;
		FUNC7(p_hwfn,
					p_ll2_conn->tx_queue.tx_sb_index);
	}

	FUNC2(p_hwfn->p_dev, p_ll2_conn->tx_queue.descq_array);
	FUNC5(p_hwfn->p_dev, &p_ll2_conn->tx_queue.txq_chain);

	FUNC2(p_hwfn->p_dev, p_ll2_conn->rx_queue.descq_array);
	FUNC5(p_hwfn->p_dev, &p_ll2_conn->rx_queue.rxq_chain);
	FUNC5(p_hwfn->p_dev, &p_ll2_conn->rx_queue.rcq_chain);

	FUNC6(p_hwfn, p_ll2_conn->cid);

	FUNC9(p_hwfn, p_ll2_conn);

	FUNC3(&p_ll2_conn->mutex);
	p_ll2_conn->b_active = false;
	FUNC4(&p_ll2_conn->mutex);
}