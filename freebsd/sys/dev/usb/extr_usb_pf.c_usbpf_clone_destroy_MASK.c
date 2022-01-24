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
struct usb_bus {int /*<<< orphan*/ * ifp; } ;
struct ifnet {int if_dunit; struct usb_bus* if_softc; } ;
struct if_clone {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct if_clone*,int) ; 

__attribute__((used)) static int
FUNC6(struct if_clone *ifc, struct ifnet *ifp)
{
	struct usb_bus *ubus;
	int unit;

	ubus = ifp->if_softc;
	unit = ifp->if_dunit;

	/*
	 * Lock USB before clearing the "ifp" pointer, to avoid
	 * clearing the pointer in the middle of a TAP operation:
	 */
	FUNC0(ubus);
	ubus->ifp = NULL;
	FUNC1(ubus);
	FUNC2(ifp);
	FUNC3(ifp);
	FUNC4(ifp);
	FUNC5(ifc, unit);
	
	return (0);
}