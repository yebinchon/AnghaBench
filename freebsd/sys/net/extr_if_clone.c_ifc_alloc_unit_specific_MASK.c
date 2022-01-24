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
struct if_clone {int ifc_maxunit; char* ifc_name; int /*<<< orphan*/  ifc_unrhdr; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOSPC ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (struct if_clone*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,int) ; 

__attribute__((used)) static int
FUNC5(struct if_clone *ifc, int *unit)
{
	char name[IFNAMSIZ];

	if (*unit > ifc->ifc_maxunit)
		return (ENOSPC);

	if (FUNC1(ifc->ifc_unrhdr, *unit) == -1)
		return (EEXIST);

	FUNC4(name, IFNAMSIZ, "%s%d", ifc->ifc_name, *unit);
	if (FUNC3(name) != NULL) {
		FUNC2(ifc->ifc_unrhdr, *unit);
		return (EEXIST);
	}

	FUNC0(ifc);

	return (0);
}