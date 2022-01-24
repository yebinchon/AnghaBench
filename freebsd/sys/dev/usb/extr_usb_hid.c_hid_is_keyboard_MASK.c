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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HUG_KEYBOARD ; 
 int /*<<< orphan*/  HUP_GENERIC_DESKTOP ; 
 scalar_t__ FUNC1 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(const void *d_ptr, uint16_t d_len)
{
	if (FUNC1(d_ptr, d_len,
	    FUNC0(HUP_GENERIC_DESKTOP, HUG_KEYBOARD)))
		return (1);
	return (0);
}