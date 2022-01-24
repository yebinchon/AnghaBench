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
typedef  int mode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline mode_t FUNC7(mode_t native_mode)
{
	mode_t perm_bits = native_mode & 07777;
	if (FUNC5(native_mode))
		return 0100000 | perm_bits;
	if (FUNC2(native_mode))
		return 0040000 | perm_bits;
	if (FUNC4(native_mode))
		return 0120000 | perm_bits;
	if (FUNC0(native_mode))
		return 0060000 | perm_bits;
	if (FUNC1(native_mode))
		return 0020000 | perm_bits;
	if (FUNC3(native_mode))
		return 0010000 | perm_bits;
	if (FUNC6(native_mode))
		return 0140000 | perm_bits;
	/* Non-standard type bits were given. */
	return perm_bits;
}