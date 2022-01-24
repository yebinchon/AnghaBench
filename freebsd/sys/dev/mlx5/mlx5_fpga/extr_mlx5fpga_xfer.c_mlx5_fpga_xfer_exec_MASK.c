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
typedef  int uintmax_t ;
typedef  scalar_t__ u64 ;
struct xfer_state {int budget; scalar_t__ start_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  status; struct mlx5_fpga_transaction const* xfer; } ;
struct mlx5_fpga_transaction {scalar_t__ addr; scalar_t__ size; TYPE_1__* conn; } ;
struct TYPE_2__ {int /*<<< orphan*/  fdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS ; 
 int FUNC0 (struct xfer_state*) ; 
 struct xfer_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct xfer_state*) ; 

int FUNC9(const struct mlx5_fpga_transaction *xfer)
{
	u64 base = FUNC2(xfer->conn->fdev);
	u64 size = FUNC3(xfer->conn->fdev);
	struct xfer_state *xfer_state;
	unsigned long flags;
	bool done = false;
	int ret = 0;

	if (xfer->addr + xfer->size > base + size) {
		FUNC4(xfer->conn->fdev, "Transfer ends at %jx outside of DDR range %jx\n",
			       (uintmax_t)(xfer->addr + xfer->size), (uintmax_t)(base + size));
		return -EINVAL;
	}

	if (xfer->addr & MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS) {
		FUNC4(xfer->conn->fdev, "Transfer address %jx not aligned\n",
			       (uintmax_t)xfer->addr);
		return -EINVAL;
	}

	if (xfer->size & MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS) {
		FUNC4(xfer->conn->fdev, "Transfer size %zu not aligned\n",
			       xfer->size);
		return -EINVAL;
	}

	if (xfer->size < 1) {
		FUNC4(xfer->conn->fdev, "Empty transfer size %zu not allowed\n",
			       xfer->size);
		return -EINVAL;
	}

	xfer_state = FUNC1(sizeof(*xfer_state), GFP_KERNEL);
	xfer_state->xfer = xfer;
	xfer_state->status = IB_WC_SUCCESS;
	xfer_state->budget = 7;
	FUNC5(&xfer_state->lock);
	FUNC6(&xfer_state->lock, flags);

	ret = FUNC0(xfer_state);
	if (ret && (xfer_state->start_count == 0))
		done = true;

	FUNC7(&xfer_state->lock, flags);

	if (done)
		FUNC8(xfer_state);
	return ret;
}