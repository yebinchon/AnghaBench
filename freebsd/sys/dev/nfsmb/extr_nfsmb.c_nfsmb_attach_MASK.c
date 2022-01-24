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
struct nfsmb_softc {int rid; int /*<<< orphan*/ * subdev; void* smbus; int /*<<< orphan*/  lock; int /*<<< orphan*/ * res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int NF2PCI_SMBASE_1 ; 
#define  NFSMB_DEVICEID_NF2_SMB 141 
#define  NFSMB_DEVICEID_NF2_ULTRA_SMB 140 
#define  NFSMB_DEVICEID_NF3_250GB_SMB 139 
#define  NFSMB_DEVICEID_NF3_PRO150_SMB 138 
#define  NFSMB_DEVICEID_NF4_04_SMB 137 
#define  NFSMB_DEVICEID_NF4_51_SMB 136 
#define  NFSMB_DEVICEID_NF4_55_SMB 135 
#define  NFSMB_DEVICEID_NF4_61_SMB 134 
#define  NFSMB_DEVICEID_NF4_65_SMB 133 
#define  NFSMB_DEVICEID_NF4_67_SMB 132 
#define  NFSMB_DEVICEID_NF4_73_SMB 131 
#define  NFSMB_DEVICEID_NF4_78S_SMB 130 
#define  NFSMB_DEVICEID_NF4_79_SMB 129 
#define  NFSMB_DEVICEID_NF4_SMB 128 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct nfsmb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct nfsmb_softc *nfsmb_sc = FUNC4(dev);

	/* Allocate I/O space */
	nfsmb_sc->rid = NF2PCI_SMBASE_1;

	nfsmb_sc->res = FUNC0(dev, SYS_RES_IOPORT,
		&nfsmb_sc->rid, RF_ACTIVE);

	if (nfsmb_sc->res == NULL) {
		/* Older incarnations of the device used non-standard BARs. */
		nfsmb_sc->rid = 0x50;
		nfsmb_sc->res = FUNC0(dev,
		    SYS_RES_IOPORT, &nfsmb_sc->rid, RF_ACTIVE);
		if (nfsmb_sc->res == NULL) {
			FUNC5(dev, "could not map i/o space\n");
			return (ENXIO);
		}
	}

	FUNC6(&nfsmb_sc->lock, FUNC3(dev), "nfsmb", MTX_DEF);

	/* Allocate a new smbus device */
	nfsmb_sc->smbus = FUNC2(dev, "smbus", -1);
	if (!nfsmb_sc->smbus) {
		FUNC7(dev);
		return (EINVAL);
	}

	nfsmb_sc->subdev = NULL;
	switch (FUNC8(dev)) {
	case NFSMB_DEVICEID_NF2_SMB:
	case NFSMB_DEVICEID_NF2_ULTRA_SMB:
	case NFSMB_DEVICEID_NF3_PRO150_SMB:
	case NFSMB_DEVICEID_NF3_250GB_SMB:
	case NFSMB_DEVICEID_NF4_SMB:
	case NFSMB_DEVICEID_NF4_04_SMB:
	case NFSMB_DEVICEID_NF4_51_SMB:
	case NFSMB_DEVICEID_NF4_55_SMB:
	case NFSMB_DEVICEID_NF4_61_SMB:
	case NFSMB_DEVICEID_NF4_65_SMB:
	case NFSMB_DEVICEID_NF4_67_SMB:
	case NFSMB_DEVICEID_NF4_73_SMB:
	case NFSMB_DEVICEID_NF4_78S_SMB:
	case NFSMB_DEVICEID_NF4_79_SMB:
		/* Trying to add secondary device as slave */
		nfsmb_sc->subdev = FUNC2(dev, "nfsmb", -1);
		if (!nfsmb_sc->subdev) {
			FUNC7(dev);
			return (EINVAL);
		}
		break;
	default:
		break;
	}

	FUNC1(dev);

	return (0);
}