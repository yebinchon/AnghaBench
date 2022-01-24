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
typedef  scalar_t__ u_int ;

/* Variables and functions */
 scalar_t__* buf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,scalar_t__*,int) ; 

FUNC2()
{
	u_int u = 0;

	while (1) {
		buf[0] = u++;

		if (512 != FUNC1(1, buf, sizeof buf))
			break;
	}
	FUNC0 (0);
}