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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IB_MAD_QP_MAX_SIZE ; 
 int /*<<< orphan*/  IB_MAD_QP_MIN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ib_mad_port_list ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mad_client ; 
 int /*<<< orphan*/  mad_recvq_size ; 
 int /*<<< orphan*/  mad_sendq_size ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(void)
{
	mad_recvq_size = FUNC3(mad_recvq_size, IB_MAD_QP_MAX_SIZE);
	mad_recvq_size = FUNC2(mad_recvq_size, IB_MAD_QP_MIN_SIZE);

	mad_sendq_size = FUNC3(mad_sendq_size, IB_MAD_QP_MAX_SIZE);
	mad_sendq_size = FUNC2(mad_sendq_size, IB_MAD_QP_MIN_SIZE);

	FUNC0(&ib_mad_port_list);

	if (FUNC1(&mad_client)) {
		FUNC4("Couldn't register ib_mad client\n");
		return -EINVAL;
	}

	return 0;
}