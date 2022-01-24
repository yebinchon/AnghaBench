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
struct octeon_device {TYPE_1__** droq; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_count; int /*<<< orphan*/  pkts_credit_reg; } ;

/* Variables and functions */
 int FUNC0 (struct octeon_device*,int,int,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct octeon_device *oct, int q_no, int num_descs,
	       int desc_size, void *app_ctx)
{
	int	ret_val = 0;

	FUNC1(oct, "Creating Droq: %d\n", q_no);
	/* droq creation and local register settings. */
	ret_val = FUNC0(oct, q_no, num_descs, desc_size, app_ctx);
	if (ret_val < 0)
		return (ret_val);

	if (ret_val == 1) {
		FUNC1(oct, "Using default droq %d\n", q_no);
		return (0);
	}

	/*
	 * Send Credit for Octeon Output queues. Credits are always
         * sent after the output queue is enabled.
         */
	FUNC2(oct, oct->droq[q_no]->pkts_credit_reg,
			oct->droq[q_no]->max_count);

	return (ret_val);
}