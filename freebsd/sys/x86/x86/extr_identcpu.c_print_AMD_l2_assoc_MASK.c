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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1(int i)
{
	switch (i & 0x0f) {
	case 0: FUNC0(", disabled/not present\n"); break;
	case 1: FUNC0(", direct mapped\n"); break;
	case 2: FUNC0(", 2-way associative\n"); break;
	case 4: FUNC0(", 4-way associative\n"); break;
	case 6: FUNC0(", 8-way associative\n"); break;
	case 8: FUNC0(", 16-way associative\n"); break;
	case 15: FUNC0(", fully associative\n"); break;
	default: FUNC0(", reserved configuration\n"); break;
	}
}