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
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(int ib_mask)
{
	int result = 0;
	int i;

	for (i = 0; i < 8 * sizeof(int); i++) {
		if ((1 << i) & ib_mask)
			result |= FUNC0(1 << i);
	}

	return result;
}