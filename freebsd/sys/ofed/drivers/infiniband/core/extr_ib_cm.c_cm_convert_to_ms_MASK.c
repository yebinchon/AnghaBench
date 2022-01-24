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
 int FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(int iba_time)
{
	/* approximate conversion to ms from 4.096us x 2^iba_time */
	return 1 << FUNC0(iba_time - 8, 0);
}