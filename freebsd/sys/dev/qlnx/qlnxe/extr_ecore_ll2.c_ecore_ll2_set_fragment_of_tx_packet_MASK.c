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
typedef  size_t u16 ;
struct TYPE_4__ {size_t cur_send_frag_num; int /*<<< orphan*/  lock; struct ecore_ll2_tx_packet* cur_send_packet; } ;
struct ecore_ll2_tx_packet {size_t bd_used; TYPE_2__ tx_queue; TYPE_1__* bds_set; } ;
struct ecore_ll2_info {size_t bd_used; TYPE_2__ tx_queue; TYPE_1__* bds_set; } ;
struct ecore_hwfn {int dummy; } ;
struct core_tx_bd {int /*<<< orphan*/  nbytes; int /*<<< orphan*/  addr; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {size_t frag_len; int /*<<< orphan*/  tx_frag; struct core_tx_bd* txq_bd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ECORE_INVAL ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 struct ecore_ll2_tx_packet* OSAL_NULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ecore_ll2_tx_packet* FUNC4 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ll2_tx_packet*) ; 

enum _ecore_status_t FUNC6(void *cxt,
							 u8 connection_handle,
							 dma_addr_t addr,
							 u16 nbytes)
{
	struct ecore_ll2_tx_packet *p_cur_send_packet = OSAL_NULL;
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)cxt;
	struct ecore_ll2_info *p_ll2_conn = OSAL_NULL;
	u16 cur_send_frag_num = 0;
	struct core_tx_bd *p_bd;
	unsigned long flags;

	p_ll2_conn = FUNC4(p_hwfn, connection_handle);
	if (p_ll2_conn == OSAL_NULL)
		return ECORE_INVAL;

	if (!p_ll2_conn->tx_queue.cur_send_packet)
		return ECORE_INVAL;

	p_cur_send_packet = p_ll2_conn->tx_queue.cur_send_packet;
	cur_send_frag_num = p_ll2_conn->tx_queue.cur_send_frag_num;

	if (cur_send_frag_num >= p_cur_send_packet->bd_used)
		return ECORE_INVAL;

	/* Fill the BD information, and possibly notify FW */
	p_bd = p_cur_send_packet->bds_set[cur_send_frag_num].txq_bd;
	FUNC0(p_bd->addr, addr);
	p_bd->nbytes = FUNC1(nbytes);
	p_cur_send_packet->bds_set[cur_send_frag_num].tx_frag = addr;
	p_cur_send_packet->bds_set[cur_send_frag_num].frag_len = nbytes;

	p_ll2_conn->tx_queue.cur_send_frag_num++;

	FUNC2(&p_ll2_conn->tx_queue.lock, flags);
	FUNC5(p_hwfn, p_ll2_conn);
	FUNC3(&p_ll2_conn->tx_queue.lock, flags);

	return ECORE_SUCCESS;
}