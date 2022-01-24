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
struct mpr_softc {int /*<<< orphan*/  buffer_dmat; } ;
struct mpr_command {int cm_flags; scalar_t__ cm_length; int /*<<< orphan*/ * cm_sge; int /*<<< orphan*/ * cm_data; int /*<<< orphan*/  cm_dmamap; int /*<<< orphan*/  cm_uio; } ;

/* Variables and functions */
 int MPR_CM_FLAGS_USE_CCB ; 
 int MPR_CM_FLAGS_USE_UIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,struct mpr_command*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mpr_command*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mpr_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mpr_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mpr_data_cb ; 
 int /*<<< orphan*/  mpr_data_cb2 ; 
 int /*<<< orphan*/  FUNC4 (struct mpr_softc*,struct mpr_command*) ; 

int
FUNC5(struct mpr_softc *sc, struct mpr_command *cm)
{
	int error = 0;

	if (cm->cm_flags & MPR_CM_FLAGS_USE_UIO) {
		error = FUNC2(sc->buffer_dmat, cm->cm_dmamap,
		    &cm->cm_uio, mpr_data_cb2, cm, 0);
	} else if (cm->cm_flags & MPR_CM_FLAGS_USE_CCB) {
		error = FUNC1(sc->buffer_dmat, cm->cm_dmamap,
		    cm->cm_data, mpr_data_cb, cm, 0);
	} else if ((cm->cm_data != NULL) && (cm->cm_length != 0)) {
		error = FUNC0(sc->buffer_dmat, cm->cm_dmamap,
		    cm->cm_data, cm->cm_length, mpr_data_cb, cm, 0);
	} else {
		/* Add a zero-length element as needed */
		if (cm->cm_sge != NULL)
			FUNC3(cm, 0, 0, 0, 1);
		FUNC4(sc, cm);
	}

	return (error);
}