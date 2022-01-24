#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef  int /*<<< orphan*/  target_id_t ;
struct vtscsi_softc {int /*<<< orphan*/  vtscsi_sim; } ;
typedef  int /*<<< orphan*/  lun_id_t ;
typedef  scalar_t__ cam_status ;

/* Variables and functions */
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  VTSCSI_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vtscsi_softc*,int /*<<< orphan*/ ,char*) ; 
 union ccb* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union ccb*) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 

__attribute__((used)) static void
FUNC6(struct vtscsi_softc *sc, target_id_t target_id,
    lun_id_t lun_id)
{
	union ccb *ccb;
	cam_status status;

	ccb = FUNC2();
	if (ccb == NULL) {
		FUNC1(sc, VTSCSI_ERROR, "cannot allocate CCB\n");
		return;
	}

	status = FUNC3(&ccb->ccb_h.path, NULL,
	    FUNC0(sc->vtscsi_sim), target_id, lun_id);
	if (status != CAM_REQ_CMP) {
		FUNC4(ccb);
		return;
	}

	FUNC5(ccb);
}