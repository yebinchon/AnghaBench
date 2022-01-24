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
typedef  scalar_t__ uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_soft_command {scalar_t__ ctxptr; } ;
struct lio_rx_ctl_context {int cond; int /*<<< orphan*/  octeon_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,char*,int /*<<< orphan*/ ) ; 
 struct octeon_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(struct octeon_device *oct, uint32_t status, void *buf)
{
	struct lio_soft_command	*sc = (struct lio_soft_command *)buf;
	struct lio_rx_ctl_context *ctx;

	ctx = (struct lio_rx_ctl_context *)sc->ctxptr;

	oct = FUNC2(ctx->octeon_id);
	if (status)
		FUNC1(oct, "rx ctl instruction failed. Status: %llx\n",
			    FUNC0(status));
	ctx->cond = 1;

	/*
	 * This barrier is required to be sure that the response has been
	 * written fully before waking up the handler
	 */
	FUNC3();
}