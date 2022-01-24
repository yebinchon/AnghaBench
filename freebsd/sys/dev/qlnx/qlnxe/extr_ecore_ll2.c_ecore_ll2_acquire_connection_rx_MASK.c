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
typedef  int u32 ;
struct ecore_ll2_rx_packet {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_num_desc; int /*<<< orphan*/  conn_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  rcq_chain; struct ecore_ll2_rx_packet* descq_array; int /*<<< orphan*/  rxq_chain; } ;
struct ecore_ll2_info {TYPE_2__ input; TYPE_1__ rx_queue; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
struct core_rx_fast_path_cqe {int dummy; } ;
struct core_rx_bd {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECORE_CHAIN_CNT_TYPE_U16 ; 
 int /*<<< orphan*/  ECORE_CHAIN_MODE_NEXT_PTR ; 
 int /*<<< orphan*/  ECORE_CHAIN_MODE_PBL ; 
 int /*<<< orphan*/  ECORE_CHAIN_USE_TO_CONSUME_PRODUCE ; 
 int /*<<< orphan*/  ECORE_MSG_LL2 ; 
 int ECORE_NOMEM ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 struct ecore_ll2_rx_packet* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC5(struct ecore_hwfn *p_hwfn,
				struct ecore_ll2_info *p_ll2_info)
{
	struct ecore_ll2_rx_packet *p_descq;
	u32 capacity;
	enum _ecore_status_t rc = ECORE_SUCCESS;

	if (!p_ll2_info->input.rx_num_desc)
		goto out;

	rc = FUNC3(p_hwfn->p_dev,
			       ECORE_CHAIN_USE_TO_CONSUME_PRODUCE,
			       ECORE_CHAIN_MODE_NEXT_PTR,
			       ECORE_CHAIN_CNT_TYPE_U16,
			       p_ll2_info->input.rx_num_desc,
			       sizeof(struct core_rx_bd),
			       &p_ll2_info->rx_queue.rxq_chain, OSAL_NULL);
	if (rc) {
		FUNC0(p_hwfn, false,
			  "Failed to allocate ll2 rxq chain\n");
		goto out;
	}

	capacity = FUNC4(&p_ll2_info->rx_queue.rxq_chain);
	p_descq = FUNC2(p_hwfn->p_dev, GFP_KERNEL,
			      capacity * sizeof(struct ecore_ll2_rx_packet));
	if (!p_descq) {
		rc = ECORE_NOMEM;
		FUNC0(p_hwfn, false,
			  "Failed to allocate ll2 Rx desc\n");
		goto out;
	}
	p_ll2_info->rx_queue.descq_array = p_descq;

	rc = FUNC3(p_hwfn->p_dev,
			       ECORE_CHAIN_USE_TO_CONSUME_PRODUCE,
			       ECORE_CHAIN_MODE_PBL,
			       ECORE_CHAIN_CNT_TYPE_U16,
			       p_ll2_info->input.rx_num_desc,
			       sizeof(struct core_rx_fast_path_cqe),
			       &p_ll2_info->rx_queue.rcq_chain, OSAL_NULL);
	if (rc != ECORE_SUCCESS) {
		FUNC0(p_hwfn, false,
			  "Failed to allocate ll2 rcq chain\n");
		goto out;
	}

	FUNC1(p_hwfn, ECORE_MSG_LL2,
		   "Allocated LL2 Rxq [Type %08x] with 0x%08x buffers\n",
		   p_ll2_info->input.conn_type,
		   p_ll2_info->input.rx_num_desc);

out:
	return rc;
}