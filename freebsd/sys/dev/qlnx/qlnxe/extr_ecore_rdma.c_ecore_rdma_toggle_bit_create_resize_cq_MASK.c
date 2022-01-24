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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  bitmap; } ;
struct ecore_rdma_info {int /*<<< orphan*/  lock; TYPE_1__ toggle_bits; int /*<<< orphan*/  proto; } ;
struct ecore_hwfn {struct ecore_rdma_info* p_rdma_info; } ;
typedef  enum ecore_rdma_toggle_bit { ____Placeholder_ecore_rdma_toggle_bit } ecore_rdma_toggle_bit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum ecore_rdma_toggle_bit
FUNC5(struct ecore_hwfn *p_hwfn,
				       u16 icid)
{
	struct ecore_rdma_info *p_info = p_hwfn->p_rdma_info;
	enum ecore_rdma_toggle_bit toggle_bit;
	u32 bmap_id;

	FUNC0(p_hwfn, ECORE_MSG_RDMA, "icid = %08x\n", icid);

	/* the function toggle the bit that is related to a given icid
	 * and returns the new toggle bit's value
	 */
	bmap_id = icid - FUNC4(p_hwfn, p_info->proto);

	FUNC1(&p_info->lock);
	toggle_bit = !FUNC3(bmap_id, p_info->toggle_bits.bitmap);
	FUNC2(&p_info->lock);

	FUNC0(p_hwfn, ECORE_MSG_RDMA, "ECORE_RDMA_TOGGLE_BIT_= %d\n",
		   toggle_bit);

	return toggle_bit;
}