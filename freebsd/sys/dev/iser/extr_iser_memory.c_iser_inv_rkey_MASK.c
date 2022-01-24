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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  invalidate_rkey; } ;
struct ib_send_wr {TYPE_1__ ex; int /*<<< orphan*/  wr_id; int /*<<< orphan*/  opcode; } ;
struct ib_mr {int /*<<< orphan*/  rkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_WR_LOCAL_INV ; 
 int /*<<< orphan*/  ISER_FASTREG_LI_WRID ; 
 int /*<<< orphan*/  FUNC0 (struct ib_mr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_send_wr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct ib_send_wr *inv_wr, struct ib_mr *mr)
{
	u32 rkey;

	FUNC2(inv_wr, 0, sizeof(*inv_wr));
	inv_wr->opcode = IB_WR_LOCAL_INV;
	inv_wr->wr_id = ISER_FASTREG_LI_WRID;
	inv_wr->ex.invalidate_rkey = mr->rkey;

	rkey = FUNC1(mr->rkey);
	FUNC0(mr, rkey);
}