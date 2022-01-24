#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  xferlist; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct TYPE_3__ {void* post_busreset; void* post_explore; int /*<<< orphan*/  dev; struct firewire_comm* fc; } ;
struct sbp_targ_softc {int /*<<< orphan*/ * sim; TYPE_2__ fwb; int /*<<< orphan*/  path; int /*<<< orphan*/  mtx; TYPE_1__ fd; } ;
struct firewire_comm {int dummy; } ;
struct cam_devq {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int ENXIO ; 
 int MAX_INITIATORS ; 
 int MAX_LUN ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_SBP_TARG ; 
 int /*<<< orphan*/  FUNC0 (struct sbp_targ_softc*) ; 
 int /*<<< orphan*/  SBP_TARG_BIND_END ; 
 int /*<<< orphan*/  SBP_TARG_BIND_START ; 
 int /*<<< orphan*/  SBP_TARG_RECV_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct sbp_targ_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct sbp_targ_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct cam_devq* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct cam_devq*) ; 
 struct firewire_comm* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct firewire_comm*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct firewire_comm*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sbp_targ_action ; 
 int /*<<< orphan*/  sbp_targ_poll ; 
 scalar_t__ sbp_targ_post_busreset ; 
 scalar_t__ sbp_targ_post_explore ; 
 int /*<<< orphan*/  sbp_targ_recv ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct sbp_targ_softc *sc;
	struct cam_devq *devq;
	struct firewire_comm *fc;

        sc = (struct sbp_targ_softc *) FUNC10(dev);
	FUNC3((void *)sc, sizeof(struct sbp_targ_softc));

	FUNC14(&sc->mtx, "sbp_targ", NULL, MTX_DEF);
	sc->fd.fc = fc = FUNC9(dev);
	sc->fd.dev = dev;
	sc->fd.post_explore = (void *) sbp_targ_post_explore;
	sc->fd.post_busreset = (void *) sbp_targ_post_busreset;

        devq = FUNC7(/*maxopenings*/MAX_LUN*MAX_INITIATORS);
	if (devq == NULL)
		return (ENXIO);

	sc->sim = FUNC4(sbp_targ_action, sbp_targ_poll,
	    "sbp_targ", sc, FUNC11(dev), &sc->mtx,
	    /*untagged*/ 1, /*tagged*/ 1, devq);
	if (sc->sim == NULL) {
		FUNC8(devq);
		return (ENXIO);
	}

	FUNC0(sc);
	if (FUNC16(sc->sim, dev, /*bus*/0) != CAM_SUCCESS)
		goto fail;

	if (FUNC17(&sc->path, /*periph*/ NULL, FUNC6(sc->sim),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC15(FUNC6(sc->sim));
		goto fail;
	}
	FUNC1(sc);

	sc->fwb.start = SBP_TARG_BIND_START;
	sc->fwb.end = SBP_TARG_BIND_END;

	/* pre-allocate xfer */
	FUNC2(&sc->fwb.xferlist);
	FUNC13(&sc->fwb.xferlist, M_SBP_TARG,
	    /*send*/ 0, /*recv*/ SBP_TARG_RECV_LEN, MAX_LUN /* XXX */,
	    fc, (void *)sc, sbp_targ_recv);
	FUNC12(fc, &sc->fwb);
	return 0;

fail:
	FUNC1(sc);
	FUNC5(sc->sim, /*free_devq*/TRUE);
	return (ENXIO);
}