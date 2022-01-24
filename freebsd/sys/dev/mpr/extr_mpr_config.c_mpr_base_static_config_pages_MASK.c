#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mpr_softc {int custom_nvme_tm_handling; int nvme_abort_timeout; int /*<<< orphan*/  iounit_pg8; int /*<<< orphan*/  ioc_pg8; } ;
struct TYPE_3__ {int NVMeAbortTO; int /*<<< orphan*/  AddlFlags2; } ;
typedef  TYPE_1__ Mpi2ManufacturingPage11_t ;
typedef  int /*<<< orphan*/  Mpi2ConfigReply_t ;

/* Variables and functions */
 int MPI2_MAN_PG11_ADDLFLAGS2_CUSTOM_TM_HANDLING_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mpr_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mpr_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mpr_softc*,int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC4(struct mpr_softc *sc)
{
	Mpi2ConfigReply_t		mpi_reply;
	Mpi2ManufacturingPage11_t	man_pg11;
	int				retry, rc;

	retry = 0;
	while (FUNC1(sc, &mpi_reply, &sc->ioc_pg8)) {
		retry++;
		if (retry > 5) {
			/* We need to Handle this situation */
			/*FIXME*/
			break;
		}
	}
	retry = 0;
	while (FUNC2(sc, &mpi_reply, &sc->iounit_pg8)) {
		retry++;
		if (retry > 5) {
			/* We need to Handle this situation */
			/*FIXME*/
			break;
		}
	}
	retry = 0;
	while ((rc = FUNC3(sc, &mpi_reply, &man_pg11))) {
		retry++;
		if (retry > 5) {
			/* We need to Handle this situation */
			/*FIXME*/
			break;
		}
	}
	
	if (!rc) {
		sc->custom_nvme_tm_handling = (FUNC0(man_pg11.AddlFlags2) &
		    MPI2_MAN_PG11_ADDLFLAGS2_CUSTOM_TM_HANDLING_MASK);
		sc->nvme_abort_timeout = man_pg11.NVMeAbortTO;

		/* Minimum NVMe Abort timeout value should be 6 seconds &
		 * maximum value should be 60 seconds.
		 */
		if (sc->nvme_abort_timeout < 6)
			sc->nvme_abort_timeout = 6;
		if (sc->nvme_abort_timeout > 60)
			sc->nvme_abort_timeout = 60;
	}
}