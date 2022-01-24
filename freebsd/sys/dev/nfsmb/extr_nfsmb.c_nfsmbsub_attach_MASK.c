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
struct nfsmb_softc {int rid; int /*<<< orphan*/ * smbus; int /*<<< orphan*/  lock; int /*<<< orphan*/ * res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int NF2PCI_SMBASE_2 ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct nfsmb_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	device_t parent;
	struct nfsmb_softc *nfsmbsub_sc = FUNC5(dev);

	parent = FUNC4(dev);

	nfsmbsub_sc->rid = NF2PCI_SMBASE_2;

	nfsmbsub_sc->res = FUNC0(parent, SYS_RES_IOPORT,
	    &nfsmbsub_sc->rid, RF_ACTIVE);
	if (nfsmbsub_sc->res == NULL) {
		/* Older incarnations of the device used non-standard BARs. */
		nfsmbsub_sc->rid = 0x54;
		nfsmbsub_sc->res = FUNC0(parent,
		    SYS_RES_IOPORT, &nfsmbsub_sc->rid, RF_ACTIVE);
		if (nfsmbsub_sc->res == NULL) {
			FUNC6(dev, "could not map i/o space\n");
			return (ENXIO);
		}
	}
	FUNC7(&nfsmbsub_sc->lock, FUNC3(dev), "nfsmb",
	    MTX_DEF);

	nfsmbsub_sc->smbus = FUNC2(dev, "smbus", -1);
	if (nfsmbsub_sc->smbus == NULL) {
		FUNC8(dev);
		return (EINVAL);
	}

	FUNC1(dev);

	return (0);
}