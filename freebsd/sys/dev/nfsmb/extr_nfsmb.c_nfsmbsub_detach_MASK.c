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
struct nfsmb_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  rid; int /*<<< orphan*/  lock; int /*<<< orphan*/ * smbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct nfsmb_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	device_t parent;
	struct nfsmb_softc *nfsmbsub_sc = FUNC3(dev);

	parent = FUNC2(dev);

	if (nfsmbsub_sc->smbus) {
		FUNC1(dev, nfsmbsub_sc->smbus);
		nfsmbsub_sc->smbus = NULL;
	}
	FUNC4(&nfsmbsub_sc->lock);
	if (nfsmbsub_sc->res) {
		FUNC0(parent, SYS_RES_IOPORT, nfsmbsub_sc->rid,
		    nfsmbsub_sc->res);
		nfsmbsub_sc->res = NULL;
	}
	return (0);
}