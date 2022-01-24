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

__attribute__((used)) static inline uint32_t FUNC0(uint32_t x)
{
	int i;
	int c;
	int b;

	c = 0;
	b = 0;

	for (i = 0; i < 32; i++) {
		if ((1 << i) & x) {
			c++;
			b = i;
		}
	}

	if (c == 1)
		return b;

	return 0;
}