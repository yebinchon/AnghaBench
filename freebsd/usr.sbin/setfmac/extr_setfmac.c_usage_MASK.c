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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2(int is_setfmac)
{

	if (is_setfmac)
		FUNC1(stderr, "usage: setfmac [-Rhq] label file ...\n");
	else
		FUNC1(stderr, "usage: setfsmac [-ehqvx] [-f specfile [...]] [-s specfile [...]] file ...\n");
	FUNC0(1);
}