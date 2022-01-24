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
 int /*<<< orphan*/  FUNC0 (char const) ; 

__attribute__((used)) static void
FUNC1(int c)
{
	const char *hex = "0123456789abcdef";

	FUNC0(hex[(c>>4)&0xf]);
	FUNC0(hex[(c>>0)&0xf]);
}