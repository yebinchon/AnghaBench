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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(void *hw_desc)
{
	int i, j;

	for (i = 0; i < 2; i++) {
		for (j = 0; j < 8; j++)
			FUNC0("%08x ", ((uint32_t *)hw_desc)[i * 8 + j]);
		FUNC0("\n");
	}
}