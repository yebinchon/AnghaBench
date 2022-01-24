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
typedef  int /*<<< orphan*/  uint16_t ;
struct mwl_hal_priv {scalar_t__* mh_cmdbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_WAIT_FW_COMPLETE_ITERATIONS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct mwl_hal_priv *mh, uint16_t cmdCode)
{
#define MAX_WAIT_FW_COMPLETE_ITERATIONS 10000
	int i;

	for (i = 0; i < MAX_WAIT_FW_COMPLETE_ITERATIONS; i++) {
		if (mh->mh_cmdbuf[0] == FUNC1(cmdCode))
			return 1;
		FUNC0(1*1000);
	}
	return 0;
#undef MAX_WAIT_FW_COMPLETE_ITERATIONS
}