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
struct adapter {scalar_t__ max_frame_size; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IXGBE_MAX_MTU ; 
 scalar_t__ IXGBE_MTU_HDR ; 
 struct adapter* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(if_ctx_t ctx, uint32_t mtu)
{
	struct adapter *adapter = FUNC1(ctx);
	int error = 0;

	FUNC0("ioctl: SIOCIFMTU (Set Interface MTU)");

	if (mtu > IXGBE_MAX_MTU) {
		error = EINVAL;
	} else {
		adapter->max_frame_size = mtu + IXGBE_MTU_HDR;
	}

	return error;
}