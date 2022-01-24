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
struct if_clone {int /*<<< orphan*/  ifc_unrhdr; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOSPC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct if_clone*,int*) ; 

__attribute__((used)) static int
FUNC3(struct if_clone *ifc, int *unit)
{
	int error;

	*unit = FUNC0(ifc->ifc_unrhdr);
	if (*unit == -1)
		return (ENOSPC);

	FUNC1(ifc->ifc_unrhdr, *unit);
	for (;;) {
		error = FUNC2(ifc, unit);
		if (error != EEXIST)
			break;

		(*unit)++;
	}

	return (error);
}