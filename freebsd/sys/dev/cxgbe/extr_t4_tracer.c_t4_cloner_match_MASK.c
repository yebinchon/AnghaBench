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
 scalar_t__ FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC1(struct if_clone *ifc, const char *name)
{

	if (FUNC0(name, "t4nex", 5) != 0 &&
	    FUNC0(name, "t5nex", 5) != 0 &&
	    FUNC0(name, "t6nex", 5) != 0)
		return (0);
	if (name[5] < '0' || name[5] > '9')
		return (0);
	return (1);
}