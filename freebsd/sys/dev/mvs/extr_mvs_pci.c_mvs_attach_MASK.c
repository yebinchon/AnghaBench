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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {char* rm_descr; int /*<<< orphan*/  rm_type; int /*<<< orphan*/  rm_end; int /*<<< orphan*/  rm_start; } ;
struct mvs_controller {int channels; int quirks; int ccc; int cccc; TYPE_1__ sc_iomem; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  r_rid; int /*<<< orphan*/  mtx; int /*<<< orphan*/ * dev; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_6__ {scalar_t__ id; scalar_t__ rev; int ports; int quirks; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int MVS_Q_GENI ; 
 int MVS_Q_GENII ; 
 int MVS_Q_GENIIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RMAN_ARRAY ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mvs_controller* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_4__* mvs_ids ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (TYPE_1__*) ; 
 int FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC22(device_t dev)
{
	struct mvs_controller *ctlr = FUNC6(dev);
	device_t child;
	int	error, unit, i;
	uint32_t devid = FUNC14(dev);
	uint8_t revid = FUNC15(dev);

	ctlr->dev = dev;
	i = 0;
	while (mvs_ids[i].id != 0 &&
	    (mvs_ids[i].id != devid ||
	     mvs_ids[i].rev > revid))
		i++;
	ctlr->channels = mvs_ids[i].ports;
	ctlr->quirks = mvs_ids[i].quirks;
	ctlr->ccc = 0;
	FUNC16(FUNC5(dev),
	    FUNC7(dev), "ccc", &ctlr->ccc);
	ctlr->cccc = 8;
	FUNC16(FUNC5(dev),
	    FUNC7(dev), "cccc", &ctlr->cccc);
	if (ctlr->ccc == 0 || ctlr->cccc == 0) {
		ctlr->ccc = 0;
		ctlr->cccc = 0;
	}
	if (ctlr->ccc > 100000)
		ctlr->ccc = 100000;
	FUNC8(dev,
	    "Gen-%s, %d %sGbps ports, Port Multiplier %s%s\n",
	    ((ctlr->quirks & MVS_Q_GENI) ? "I" :
	     ((ctlr->quirks & MVS_Q_GENII) ? "II" : "IIe")),
	    ctlr->channels,
	    ((ctlr->quirks & MVS_Q_GENI) ? "1.5" : "3"),
	    ((ctlr->quirks & MVS_Q_GENI) ?
	    "not supported" : "supported"),
	    ((ctlr->quirks & MVS_Q_GENIIE) ?
	    " with FBS" : ""));
	FUNC10(&ctlr->mtx, "MVS controller lock", NULL, MTX_DEF);
	/* We should have a memory BAR(0). */
	ctlr->r_rid = FUNC0(0);
	if (!(ctlr->r_mem = FUNC1(dev, SYS_RES_MEMORY,
	    &ctlr->r_rid, RF_ACTIVE)))
		return ENXIO;
	/* Setup our own memory management for channels. */
	ctlr->sc_iomem.rm_start = FUNC19(ctlr->r_mem);
	ctlr->sc_iomem.rm_end = FUNC18(ctlr->r_mem);
	ctlr->sc_iomem.rm_type = RMAN_ARRAY;
	ctlr->sc_iomem.rm_descr = "I/O memory addresses";
	if ((error = FUNC20(&ctlr->sc_iomem)) != 0) {
		FUNC3(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
		return (error);
	}
	if ((error = FUNC21(&ctlr->sc_iomem,
	    FUNC19(ctlr->r_mem), FUNC18(ctlr->r_mem))) != 0) {
		FUNC3(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
		FUNC17(&ctlr->sc_iomem);
		return (error);
	}
	FUNC13(dev);
	FUNC11(dev);
	/* Setup interrupts. */
	if (FUNC12(dev)) {
		FUNC3(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
		FUNC17(&ctlr->sc_iomem);
		return ENXIO;
	}
	/* Attach all channels on this controller */
	for (unit = 0; unit < ctlr->channels; unit++) {
		child = FUNC4(dev, "mvsch", -1);
		if (child == NULL)
			FUNC8(dev, "failed to add channel device\n");
		else
			FUNC9(child, (void *)(intptr_t)unit);
	}
	FUNC2(dev);
	return 0;
}