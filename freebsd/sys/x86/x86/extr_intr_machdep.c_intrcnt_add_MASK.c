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
typedef  int /*<<< orphan*/  u_long ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * intrcnt ; 
 size_t intrcnt_index ; 
 int /*<<< orphan*/  intrcnt_lock ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t nintrcnt ; 

void
FUNC4(const char *name, u_long **countp)
{

	FUNC2(&intrcnt_lock);
	FUNC0(intrcnt_index < nintrcnt);
	*countp = &intrcnt[intrcnt_index];
	FUNC1(name, intrcnt_index);
	intrcnt_index++;
	FUNC3(&intrcnt_lock);
}