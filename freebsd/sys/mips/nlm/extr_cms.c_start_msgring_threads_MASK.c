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
 int XLP_MAX_CORES ; 
 int XLP_MAX_THREADS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int xlp_msg_thread_mask ; 

__attribute__((used)) static void
FUNC1(void *arg)
{
	int	hwt;

	for (hwt = 1; hwt < XLP_MAX_CORES * XLP_MAX_THREADS; hwt++) {
		if ((xlp_msg_thread_mask & (1 << hwt)) == 0)
			continue;
		FUNC0(hwt);
	}
}