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
struct xenbus_device {int /*<<< orphan*/  nodename; struct pcifront_device* data; } ;
struct pcifront_device {int dummy; } ;
typedef  int XenbusState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
#define  XenbusStateClosed 130 
#define  XenbusStateClosing 129 
#define  XenbusStateConnected 128 
 int /*<<< orphan*/  FUNC1 (struct pcifront_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcifront_device*) ; 

__attribute__((used)) static void
FUNC3(struct xenbus_device *xdev,
						 XenbusState be_state)
{
	struct pcifront_device *pdev = xdev->data;

	switch (be_state) {
	case XenbusStateClosing:
		FUNC0("backend closing (%s)\n", xdev->nodename);
		FUNC2(pdev);
		break;

	case XenbusStateClosed:
		FUNC0("backend closed (%s)\n", xdev->nodename);
		FUNC2(pdev);
		break;

	case XenbusStateConnected:
		FUNC0("backend connected (%s)\n", xdev->nodename);
		FUNC1(pdev);
		break;
		
	default:
		break;
	}
}