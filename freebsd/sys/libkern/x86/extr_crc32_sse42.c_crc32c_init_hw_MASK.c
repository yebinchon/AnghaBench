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
 int LONG ; 
 int SHORT ; 
 int /*<<< orphan*/  crc32c_2long ; 
 int /*<<< orphan*/  crc32c_2short ; 
 int /*<<< orphan*/  crc32c_long ; 
 int /*<<< orphan*/  crc32c_short ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
#ifndef _KERNEL
__attribute__((__constructor__))
#endif
FUNC1(void)
{
	FUNC0(crc32c_long, LONG);
	FUNC0(crc32c_2long, 2 * LONG);
	FUNC0(crc32c_short, SHORT);
	FUNC0(crc32c_2short, 2 * SHORT);
}