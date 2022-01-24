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
struct refresh_params {unsigned int flags; int /*<<< orphan*/ * has_errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct refresh_params *o, unsigned int flag)
{
	FUNC2();
	FUNC0();
	*o->has_errors |= FUNC1(o->flags | flag);
	return 0;
}