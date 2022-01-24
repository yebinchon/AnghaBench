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
struct ifnet {int dummy; } ;
struct if_clone {int ifc_flags; int /*<<< orphan*/  ifc_name; } ;

/* Variables and functions */
 int IFC_NOGROUP ; 
 int /*<<< orphan*/  FUNC0 (struct if_clone*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ifnet *ifp, struct if_clone *ifc)
{
	if ((ifc->ifc_flags & IFC_NOGROUP) == 0) {
		FUNC1(ifp, ifc->ifc_name);
		FUNC0(ifc);
	}
}