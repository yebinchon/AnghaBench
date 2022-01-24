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
struct if_clone {int dummy; } ;

/* Variables and functions */
 int TUN_L2 ; 
 int TUN_VMNET ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int
FUNC1(struct if_clone *ifc, const char *name)
{
	int tunflags;

	if (FUNC0(name, NULL, &tunflags) == 0) {
		if ((tunflags & (TUN_L2 | TUN_VMNET)) == TUN_L2)
			return (1);
	}

	return (0);
}