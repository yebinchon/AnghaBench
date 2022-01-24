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
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  bitstr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ xsize ; 

void
FUNC2(bitstr_t *m, int32_t fb, int32_t make, int32_t fd)
{
	int32_t i;

	if (fd >= 0) {
		for (i = fb; i < xsize; i++) {
			if (FUNC0(m, i))
				FUNC1(fd, i, make);
		}
	}
}