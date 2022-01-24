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
typedef  scalar_t__ U8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(U8 HotSparePool)
{
	int i;

	if (HotSparePool == 0) {
		FUNC0("none");
		return;
	}
	for (i = 0; HotSparePool != 0; i++) {
		if (HotSparePool & 1) {
			FUNC0("%d", i);
			if (HotSparePool == 1)
				break;
			FUNC0(", ");
		}
		HotSparePool >>= 1;
	}
}