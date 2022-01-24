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
struct lio_soft_command {int* ctxptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(struct octeon_device *oct, uint32_t status, void *buf)
{
	struct lio_soft_command	*sc = buf;
	volatile int		*mtu_sc_ctx;

	mtu_sc_ctx = sc->ctxptr;

	if (status) {
		FUNC1(oct, "MTU updation ctl instruction failed. Status: %llx\n",
			    FUNC0(status));
		*mtu_sc_ctx = -1;
		/*
		 * This barrier is required to be sure that the
		 * response has been written fully.
		 */
		FUNC2();
		return;
	}

	*mtu_sc_ctx = 1;

	/*
	 * This barrier is required to be sure that the response has been
	 * written fully.
	 */
	FUNC2();
}