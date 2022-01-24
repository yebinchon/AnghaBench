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
typedef  int u_int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  randomtab_20 ; 

u_int32_t
FUNC3(void)
{

	/*
	 * It's ok to emit zero flow labels early, before random is available
	 * (seeded).  RFC 6437:
	 *
	 * "A Flow Label of zero is used to indicate packets that have not been
	 * labeled."
	 */
	if (FUNC0(!FUNC1()))
		return (0);

	return FUNC2(&randomtab_20) & 0xfffff;
}