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
struct usb_bus {int /*<<< orphan*/  parent; struct ifnet* ifp; } ;
struct ifnet {int if_dunit; int /*<<< orphan*/  if_flags; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_dname; struct usb_bus* if_softc; int /*<<< orphan*/  if_xname; } ;
struct if_clone {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DLT_USB ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  IFT_USB ; 
 int /*<<< orphan*/  USBPF_HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct ifnet* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int FUNC4 (struct if_clone*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct if_clone*,int) ; 
 int FUNC6 (char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 struct usb_bus* FUNC9 (char*) ; 
 int /*<<< orphan*/  usbpf_ioctl ; 
 int /*<<< orphan*/  usbusname ; 

__attribute__((used)) static int
FUNC10(struct if_clone *ifc, char *name, size_t len, caddr_t params)
{
	int error;
	int unit;
	struct ifnet *ifp;
	struct usb_bus *ubus;

	error = FUNC6(name, &unit);
	if (error)
		return (error);
 	if (unit < 0)
		return (EINVAL);

	ubus = FUNC9(name);
	if (ubus == NULL)
		return (1);
	if (ubus->ifp != NULL)
		return (1);

	error = FUNC4(ifc, &unit);
	if (error) {
		FUNC1(ubus->parent, "usbpf: Could not allocate "
		    "instance\n");
		return (error);
	}
	ifp = ubus->ifp = FUNC2(IFT_USB);
	if (ifp == NULL) {
		FUNC5(ifc, unit);
		FUNC1(ubus->parent, "usbpf: Could not allocate "
		    "instance\n");
		return (ENOSPC);
	}
	FUNC8(ifp->if_xname, name, sizeof(ifp->if_xname));
	ifp->if_softc = ubus;
	ifp->if_dname = usbusname;
	ifp->if_dunit = unit;
	ifp->if_ioctl = usbpf_ioctl;
	FUNC3(ifp);
	ifp->if_flags |= IFF_UP;
	FUNC7(ifp);
	/*
	 * XXX According to the specification of DLT_USB, it indicates
	 * packets beginning with USB setup header. But not sure all
	 * packets would be.
	 */
	FUNC0(ifp, DLT_USB, USBPF_HDR_LEN);

	return (0);
}