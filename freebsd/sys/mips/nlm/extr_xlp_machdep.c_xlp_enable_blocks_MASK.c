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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  DFS_DEVICE_RSA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XLP_MAX_NODES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
	uint64_t sysbase;
	int i;

	for (i = 0; i < XLP_MAX_NODES; i++) {
		if (!FUNC1(FUNC0(i)))
			continue;
		sysbase = FUNC2(i);
		FUNC3(sysbase, DFS_DEVICE_RSA);
	}
}