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
struct ocs_softc {int instance_index; int /*<<< orphan*/  hw_war_version; int /*<<< orphan*/  ramlog; int /*<<< orphan*/  fc_type; int /*<<< orphan*/  dev; int /*<<< orphan*/  ocs_xport; int /*<<< orphan*/  dmat; int /*<<< orphan*/  businfo; int /*<<< orphan*/  pci_device; int /*<<< orphan*/  pci_vendor; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct ocs_softc**) ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FC_TYPE_FCP ; 
 int /*<<< orphan*/  M_OCS ; 
 int /*<<< orphan*/  OCS_XPORT_FC ; 
 int /*<<< orphan*/  PCIC_SERIALBUS ; 
 scalar_t__ PCIS_SERIALBUS_FC ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ocs_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ocs_softc*) ; 
 scalar_t__ FUNC9 (struct ocs_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocs_softc*) ; 
 struct ocs_softc** ocs_devices ; 
 scalar_t__ FUNC11 (struct ocs_softc*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct ocs_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ocs_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ocs_softc*) ; 
 scalar_t__ FUNC15 (struct ocs_softc*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 

__attribute__((used)) static int
FUNC26(device_t dev)
{
	struct ocs_softc	*ocs;
	int			instance;

	instance = FUNC4(dev);
	
	ocs = (struct ocs_softc *)FUNC3(dev);
	if (NULL == ocs) {
		FUNC5(dev, "cannot allocate softc\n");
		return ENOMEM;
	}
	FUNC7(ocs, 0, sizeof(struct ocs_softc));

	if (instance < FUNC0(ocs_devices)) {
		ocs_devices[instance] = ocs;
	} else {
		FUNC5(dev, "got unexpected ocs instance number %d\n", instance);
	}

	ocs->instance_index = instance;

	ocs->dev = dev;

	FUNC17(dev, SYS_RES_MEMORY);
	FUNC16(dev);

	ocs->pci_vendor = FUNC24(dev);
	ocs->pci_device = FUNC20(dev);
	FUNC25(ocs->businfo, sizeof(ocs->businfo), "%02X:%02X:%02X",
		FUNC18(dev), FUNC22(dev), FUNC21(dev));

	/* Map all memory BARs */
        if (FUNC12(dev, ocs)) {
		FUNC5(dev, "Failed to map pci bars\n");
		goto release_bus;
        }
	
	/* create a root DMA tag for the device */
	if (FUNC1(FUNC2(dev),
				1,		/* byte alignment */
				0,		/* no boundary restrictions */
				BUS_SPACE_MAXADDR, /* no minimum low address */
				BUS_SPACE_MAXADDR, /* no maximum high address */
				NULL,		/* no filter function */
				NULL,		/* or arguments */
				BUS_SPACE_MAXSIZE, /* max size covered by tag */
				BUS_SPACE_UNRESTRICTED, /* no segment count restrictions */
				BUS_SPACE_MAXSIZE, /* no segment length restrictions */
				0,		/* flags */
				NULL,		/* no lock manipulation function */
				NULL,		/* or arguments */
				&ocs->dmat)) {
		FUNC5(dev, "parent DMA tag allocation failed\n");
		goto release_bus;
	}

	if (FUNC11(ocs)) {
		FUNC5(dev, "Interrupt allocation failed\n");
		goto release_bus;
	}

	if (PCIC_SERIALBUS == FUNC19(dev) &&
			PCIS_SERIALBUS_FC == FUNC23(dev))
		ocs->ocs_xport = OCS_XPORT_FC;
	else {
		FUNC5(dev, "unsupported class (%#x : %#x)\n",
				FUNC19(dev),
				FUNC19(dev));
		goto release_bus;
	}

	/* Setup tunable parameters */
	if (FUNC15(ocs)) {
		FUNC5(ocs->dev, "failed to setup params\n");
		goto release_bus;
	}

	if (FUNC9(ocs)) {
		FUNC5(ocs->dev, "failed to attach device\n");
		goto release_params;
	}

	ocs->fc_type = FC_TYPE_FCP;

	FUNC8(ocs);

	return 0;

release_params:
	FUNC13(ocs, ocs->ramlog);
	FUNC10(ocs);
	FUNC6(ocs->hw_war_version, M_OCS);
release_bus:
	FUNC14(ocs);
	return ENXIO;
}