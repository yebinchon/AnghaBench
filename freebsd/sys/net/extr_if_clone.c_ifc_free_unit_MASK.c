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
 int /*<<< orphan*/  FUNC0 (struct if_clone*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct if_clone *ifc, int unit)
{

	FUNC1(ifc->ifc_unrhdr, unit);
	FUNC0(ifc);
}