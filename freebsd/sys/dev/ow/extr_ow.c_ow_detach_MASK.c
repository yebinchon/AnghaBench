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
struct ow_softc {int dummy; } ;
struct ow_devinfo {int dummy; } ;
typedef  struct ow_devinfo device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_OW ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (struct ow_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ow_devinfo) ; 
 int /*<<< orphan*/  FUNC2 (struct ow_devinfo,struct ow_devinfo) ; 
 scalar_t__ FUNC3 (struct ow_devinfo,struct ow_devinfo**,int*) ; 
 struct ow_devinfo* FUNC4 (struct ow_devinfo) ; 
 struct ow_softc* FUNC5 (struct ow_devinfo) ; 
 int /*<<< orphan*/  FUNC6 (struct ow_devinfo*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t ndev)
{
	device_t *children, child;
	int nkid, i;
	struct ow_devinfo *di;
	struct ow_softc *sc;

	sc = FUNC5(ndev);
	/*
	 * detach all the children first. This is blocking until any threads
	 * have stopped, etc.
	 */
	FUNC1(ndev);

	/*
	 * We delete all the children, and free up the ivars 
	 */
	if (FUNC3(ndev, &children, &nkid) != 0)
		return ENOMEM;
	for (i = 0; i < nkid; i++) {
		child = children[i];
		di = FUNC4(child);
		FUNC6(di, M_OW);
		FUNC2(ndev, child);
	}
	FUNC6(children, M_TEMP);

	FUNC0(sc);
	return 0;
}