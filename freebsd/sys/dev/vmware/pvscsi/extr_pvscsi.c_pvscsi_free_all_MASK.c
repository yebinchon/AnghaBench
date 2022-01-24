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
struct pvscsi_softc {int /*<<< orphan*/ * mm_res; int /*<<< orphan*/  mm_rid; int /*<<< orphan*/  dev; int /*<<< orphan*/ * parent_dmat; int /*<<< orphan*/ * buffer_dmat; scalar_t__ hcbs; int /*<<< orphan*/  hcb_cnt; scalar_t__ sim; scalar_t__ bus_path; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  M_PVSCSI ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pvscsi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pvscsi_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct pvscsi_softc*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static void
FUNC11(struct pvscsi_softc *sc)
{

	if (sc->sim) {
		int32_t status;

		if (sc->bus_path) {
			FUNC10(sc->bus_path);
		}

		status = FUNC9(FUNC3(sc->sim));
		if (status != CAM_REQ_CMP) {
			FUNC4(sc->dev,
			    "Error deregistering bus, status=%d\n", status);
		}

		FUNC2(sc->sim, TRUE);
	}

	FUNC6(sc, sc->hcb_cnt);

	if (sc->hcbs) {
		FUNC5(sc->hcbs, M_PVSCSI);
	}

	FUNC8(sc);

	FUNC7(sc);

	if (sc->buffer_dmat != NULL) {
		FUNC0(sc->buffer_dmat);
	}

	if (sc->parent_dmat != NULL) {
		FUNC0(sc->parent_dmat);
	}

	if (sc->mm_res != NULL) {
		FUNC1(sc->dev, SYS_RES_MEMORY, sc->mm_rid,
		    sc->mm_res);
	}
}