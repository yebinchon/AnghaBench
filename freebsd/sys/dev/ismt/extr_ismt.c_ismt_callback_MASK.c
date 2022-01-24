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
struct ismt_softc {int /*<<< orphan*/  bus_reserved; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int SMB_EABORT ; 
#define  SMB_RELEASE_BUS 129 
#define  SMB_REQUEST_BUS 128 
 int FUNC2 (uintptr_t*,uintptr_t,uintptr_t) ; 
 int /*<<< orphan*/  FUNC3 (uintptr_t*,uintptr_t) ; 
 int /*<<< orphan*/  curthread ; 
 struct ismt_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC5(device_t dev, int index, void *data)
{
	struct ismt_softc	*sc;
	int			acquired, err;

	sc = FUNC4(dev);

	switch (index) {
	case SMB_REQUEST_BUS:
		acquired = FUNC2(
		    (uintptr_t *)&sc->bus_reserved,
		    (uintptr_t)NULL, (uintptr_t)curthread);
		FUNC0(dev, "SMB_REQUEST_BUS acquired=%d\n", acquired);
		if (acquired)
			err = 0;
		else
			err = EWOULDBLOCK;
		break;
	case SMB_RELEASE_BUS:
		FUNC1(sc->bus_reserved == curthread,
		    ("SMB_RELEASE_BUS called by wrong thread\n"));
		FUNC0(dev, "SMB_RELEASE_BUS\n");
		FUNC3((uintptr_t *)&sc->bus_reserved,
		    (uintptr_t)NULL);
		err = 0;
		break;
	default:
		err = SMB_EABORT;
		break;
	}

	return (err);
}