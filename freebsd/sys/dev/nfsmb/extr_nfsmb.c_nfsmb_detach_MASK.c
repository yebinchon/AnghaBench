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
struct nfsmb_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  rid; int /*<<< orphan*/  lock; int /*<<< orphan*/ * smbus; int /*<<< orphan*/ * subdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nfsmb_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct nfsmb_softc *nfsmb_sc = FUNC2(dev);

	if (nfsmb_sc->subdev) {
		FUNC1(dev, nfsmb_sc->subdev);
		nfsmb_sc->subdev = NULL;
	}

	if (nfsmb_sc->smbus) {
		FUNC1(dev, nfsmb_sc->smbus);
		nfsmb_sc->smbus = NULL;
	}

	FUNC3(&nfsmb_sc->lock);
	if (nfsmb_sc->res) {
		FUNC0(dev, SYS_RES_IOPORT, nfsmb_sc->rid,
		    nfsmb_sc->res);
		nfsmb_sc->res = NULL;
	}

	return (0);
}