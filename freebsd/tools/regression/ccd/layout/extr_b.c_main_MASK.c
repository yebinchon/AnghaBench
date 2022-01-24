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
 int* buf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int) ; 

FUNC3()
{
	u_int u = 0;

	while (1) {

		if (512 != FUNC2(0, buf, sizeof buf))
			break;

		FUNC1("%u %u\n", u++, buf[0]);
	}
	FUNC0 (0);
}