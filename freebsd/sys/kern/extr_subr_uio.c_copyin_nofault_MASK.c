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
 int FUNC0 (void const*,void*,size_t) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int
FUNC3(const void *udaddr, void *kaddr, size_t len)
{
	int error, save;

	save = FUNC1();
	error = FUNC0(udaddr, kaddr, len);
	FUNC2(save);
	return (error);
}