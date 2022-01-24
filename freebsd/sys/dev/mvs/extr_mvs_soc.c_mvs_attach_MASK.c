#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {char* rm_descr; int /*<<< orphan*/  rm_type; int /*<<< orphan*/  rm_end; int /*<<< orphan*/  rm_start; } ;
struct mvs_controller {int channels; int quirks; int ccc; int cccc; TYPE_1__ sc_iomem; int /*<<< orphan*/  r_mem; scalar_t__ r_rid; int /*<<< orphan*/  mtx; int /*<<< orphan*/ * dev; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_6__ {scalar_t__ id; scalar_t__ rev; int ports; int quirks; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int MVS_Q_GENI ; 
 int MVS_Q_GENII ; 
 int MVS_Q_GENIIE ; 
 int MVS_Q_SOC65 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RMAN_ARRAY ; 
 scalar_t__ SATA_PHYCFG_OFS ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct mvs_controller* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_4__* mvs_ids ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_1__*) ; 
 int FUNC19 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	struct mvs_controller *ctlr = FUNC7(dev);
	device_t child;
	int	error, unit, i;
	uint32_t devid, revid;

	FUNC20(&devid, &revid);
	ctlr->dev = dev;
	i = 0;
	while (mvs_ids[i].id != 0 &&
	    (mvs_ids[i].id != devid ||
	     mvs_ids[i].rev > revid))
		i++;
	ctlr->channels = mvs_ids[i].ports;
	ctlr->quirks = mvs_ids[i].quirks;
	ctlr->ccc = 0;
	FUNC14(FUNC6(dev),
	    FUNC8(dev), "ccc", &ctlr->ccc);
	ctlr->cccc = 8;
	FUNC14(FUNC6(dev),
	    FUNC8(dev), "cccc", &ctlr->cccc);
	if (ctlr->ccc == 0 || ctlr->cccc == 0) {
		ctlr->ccc = 0;
		ctlr->cccc = 0;
	}
	if (ctlr->ccc > 100000)
		ctlr->ccc = 100000;
	FUNC9(dev,
	    "Gen-%s, %d %sGbps ports, Port Multiplier %s%s\n",
	    ((ctlr->quirks & MVS_Q_GENI) ? "I" :
	     ((ctlr->quirks & MVS_Q_GENII) ? "II" : "IIe")),
	    ctlr->channels,
	    ((ctlr->quirks & MVS_Q_GENI) ? "1.5" : "3"),
	    ((ctlr->quirks & MVS_Q_GENI) ?
	    "not supported" : "supported"),
	    ((ctlr->quirks & MVS_Q_GENIIE) ?
	    " with FBS" : ""));
	FUNC11(&ctlr->mtx, "MVS controller lock", NULL, MTX_DEF);
	/* We should have a memory BAR(0). */
	ctlr->r_rid = 0;
	if (!(ctlr->r_mem = FUNC2(dev, SYS_RES_MEMORY,
	    &ctlr->r_rid, RF_ACTIVE)))
		return ENXIO;
	if (FUNC0(ctlr->r_mem, FUNC1(0) + SATA_PHYCFG_OFS) != 0)
		ctlr->quirks |= MVS_Q_SOC65;
	/* Setup our own memory management for channels. */
	ctlr->sc_iomem.rm_start = FUNC17(ctlr->r_mem);
	ctlr->sc_iomem.rm_end = FUNC16(ctlr->r_mem);
	ctlr->sc_iomem.rm_type = RMAN_ARRAY;
	ctlr->sc_iomem.rm_descr = "I/O memory addresses";
	if ((error = FUNC18(&ctlr->sc_iomem)) != 0) {
		FUNC4(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
		return (error);
	}
	if ((error = FUNC19(&ctlr->sc_iomem,
	    FUNC17(ctlr->r_mem), FUNC16(ctlr->r_mem))) != 0) {
		FUNC4(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
		FUNC15(&ctlr->sc_iomem);
		return (error);
	}
	FUNC12(dev);
	/* Setup interrupts. */
	if (FUNC13(dev)) {
		FUNC4(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
		FUNC15(&ctlr->sc_iomem);
		return ENXIO;
	}
	/* Attach all channels on this controller */
	for (unit = 0; unit < ctlr->channels; unit++) {
		child = FUNC5(dev, "mvsch", -1);
		if (child == NULL)
			FUNC9(dev, "failed to add channel device\n");
		else
			FUNC10(child, (void *)(intptr_t)unit);
	}
	FUNC3(dev);
	return 0;
}