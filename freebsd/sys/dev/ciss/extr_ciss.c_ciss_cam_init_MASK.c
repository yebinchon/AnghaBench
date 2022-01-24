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
struct ciss_softc {int ciss_max_logical_bus; int ciss_max_physical_bus; int /*<<< orphan*/  ciss_mtx; int /*<<< orphan*/  ciss_dev; int /*<<< orphan*/ ** ciss_cam_sim; int /*<<< orphan*/ * ciss_cam_devq; scalar_t__ ciss_max_requests; TYPE_2__* ciss_controllers; } ;
struct cam_sim {int dummy; } ;
struct TYPE_3__ {scalar_t__ bus; } ;
struct TYPE_4__ {TYPE_1__ physical; } ;

/* Variables and functions */
 int /*<<< orphan*/  CISS_MALLOC_CLASS ; 
 int CISS_PHYSICAL_BASE ; 
 int ENOMEM ; 
 int ENXIO ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ciss_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ciss_cam_action ; 
 int /*<<< orphan*/  ciss_cam_poll ; 
 int /*<<< orphan*/  FUNC2 (struct ciss_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(struct ciss_softc *sc)
{
    int			i, maxbus;

    FUNC3(1);

    /*
     * Allocate a devq.  We can reuse this for the masked physical
     * devices if we decide to export these as well.
     */
    if ((sc->ciss_cam_devq = FUNC1(sc->ciss_max_requests - 2)) == NULL) {
	FUNC2(sc, "can't allocate CAM SIM queue\n");
	return(ENOMEM);
    }

    /*
     * Create a SIM.
     *
     * This naturally wastes a bit of memory.  The alternative is to allocate
     * and register each bus as it is found, and then track them on a linked
     * list.  Unfortunately, the driver has a few places where it needs to
     * look up the SIM based solely on bus number, and it's unclear whether
     * a list traversal would work for these situations.
     */
    maxbus = FUNC6(sc->ciss_max_logical_bus, sc->ciss_max_physical_bus +
		 CISS_PHYSICAL_BASE);
    sc->ciss_cam_sim = FUNC5(maxbus * sizeof(struct cam_sim*),
			      CISS_MALLOC_CLASS, M_NOWAIT | M_ZERO);
    if (sc->ciss_cam_sim == NULL) {
	FUNC2(sc, "can't allocate memory for controller SIM\n");
	return(ENOMEM);
    }

    for (i = 0; i < sc->ciss_max_logical_bus; i++) {
	if ((sc->ciss_cam_sim[i] = FUNC0(ciss_cam_action, ciss_cam_poll,
						 "ciss", sc,
						 FUNC4(sc->ciss_dev),
						 &sc->ciss_mtx,
						 2,
						 sc->ciss_max_requests - 2,
						 sc->ciss_cam_devq)) == NULL) {
	    FUNC2(sc, "can't allocate CAM SIM for controller %d\n", i);
	    return(ENOMEM);
	}

	/*
	 * Register bus with this SIM.
	 */
	FUNC7(&sc->ciss_mtx);
	if (i == 0 || sc->ciss_controllers[i].physical.bus != 0) { 
	    if (FUNC9(sc->ciss_cam_sim[i], sc->ciss_dev, i) != 0) {
		FUNC2(sc, "can't register SCSI bus %d\n", i);
		FUNC8(&sc->ciss_mtx);
		return (ENXIO);
	    }
	}
	FUNC8(&sc->ciss_mtx);
    }

    for (i = CISS_PHYSICAL_BASE; i < sc->ciss_max_physical_bus +
	 CISS_PHYSICAL_BASE; i++) {
	if ((sc->ciss_cam_sim[i] = FUNC0(ciss_cam_action, ciss_cam_poll,
						 "ciss", sc,
						 FUNC4(sc->ciss_dev),
						 &sc->ciss_mtx, 1,
						 sc->ciss_max_requests - 2,
						 sc->ciss_cam_devq)) == NULL) {
	    FUNC2(sc, "can't allocate CAM SIM for controller %d\n", i);
	    return (ENOMEM);
	}

	FUNC7(&sc->ciss_mtx);
	if (FUNC9(sc->ciss_cam_sim[i], sc->ciss_dev, i) != 0) {
	    FUNC2(sc, "can't register SCSI bus %d\n", i);
	    FUNC8(&sc->ciss_mtx);
	    return (ENXIO);
	}
	FUNC8(&sc->ciss_mtx);
    }

    return(0);
}