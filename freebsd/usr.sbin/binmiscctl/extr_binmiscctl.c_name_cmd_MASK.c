#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * xbe_name; } ;
typedef  TYPE_1__ ximgact_binmisc_entry_t ;

/* Variables and functions */
 scalar_t__ IBE_NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

int
FUNC3(int argc, char *argv[], ximgact_binmisc_entry_t *xbe)
{
	if (argc == 0)
		FUNC2("Required argument missing\n");
	if (FUNC1(argv[0]) > IBE_NAME_MAX)
		FUNC2("'%s' string length longer than IBE_NAME_MAX (%d)",
		    IBE_NAME_MAX);
	FUNC0(&xbe->xbe_name[0], argv[0], IBE_NAME_MAX);

	return (0);
}