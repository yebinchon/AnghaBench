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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct xbd_softc {size_t xbd_max_request_size; int /*<<< orphan*/  xbd_dev; int /*<<< orphan*/  xbd_io_lock; int /*<<< orphan*/  xbd_max_request_segments; } ;
struct xbd_command {size_t cm_datalen; size_t cm_sector_number; scalar_t__ cm_status; int /*<<< orphan*/  cm_complete; int /*<<< orphan*/  cm_operation; void* cm_data; int /*<<< orphan*/  cm_gref_head; } ;
struct disk {size_t d_sectorsize; struct xbd_softc* d_drv1; } ;
typedef  size_t off_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLKIF_OP_WRITE ; 
 scalar_t__ BLKIF_RSP_OKAY ; 
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  XBD_Q_COMPLETE ; 
 int /*<<< orphan*/  XBD_Q_FREE ; 
 int /*<<< orphan*/  XBD_Q_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct xbd_command* FUNC4 (struct xbd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xbd_dump_complete ; 
 int /*<<< orphan*/  FUNC5 (struct xbd_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xbd_command*) ; 
 int /*<<< orphan*/  FUNC7 (struct xbd_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct xbd_softc*) ; 

__attribute__((used)) static int
FUNC9(void *arg, void *virtual, vm_offset_t physical, off_t offset,
    size_t length)
{
	struct disk *dp = arg;
	struct xbd_softc *sc = dp->d_drv1;
	struct xbd_command *cm;
	size_t chunk;
	int sbp;
	int rc = 0;

	if (length == 0)
		return (0);

	FUNC7(sc);	/* All quiet on the western front. */

	/*
	 * If this lock is held, then this module is failing, and a
	 * successful kernel dump is highly unlikely anyway.
	 */
	FUNC2(&sc->xbd_io_lock);

	/* Split the 64KB block as needed */
	for (sbp=0; length > 0; sbp++) {
		cm = FUNC4(sc, XBD_Q_FREE);
		if (cm == NULL) {
			FUNC3(&sc->xbd_io_lock);
			FUNC0(sc->xbd_dev, "dump: no more commands?\n");
			return (EBUSY);
		}

		if (FUNC1(sc->xbd_max_request_segments,
		    &cm->cm_gref_head) != 0) {
			FUNC6(cm);
			FUNC3(&sc->xbd_io_lock);
			FUNC0(sc->xbd_dev, "no more grant allocs?\n");
			return (EBUSY);
		}

		chunk = length > sc->xbd_max_request_size ?
		    sc->xbd_max_request_size : length;
		cm->cm_data = virtual;
		cm->cm_datalen = chunk;
		cm->cm_operation = BLKIF_OP_WRITE;
		cm->cm_sector_number = offset / dp->d_sectorsize;
		cm->cm_complete = xbd_dump_complete;

		FUNC5(cm, XBD_Q_READY);

		length -= chunk;
		offset += chunk;
		virtual = (char *) virtual + chunk;
	}

	/* Tell DOM0 to do the I/O */
	FUNC8(sc);
	FUNC3(&sc->xbd_io_lock);

	/* Poll for the completion. */
	FUNC7(sc);	/* All quite on the eastern front */

	/* If there were any errors, bail out... */
	while ((cm = FUNC4(sc, XBD_Q_COMPLETE)) != NULL) {
		if (cm->cm_status != BLKIF_RSP_OKAY) {
			FUNC0(sc->xbd_dev,
			    "Dump I/O failed at sector %jd\n",
			    cm->cm_sector_number);
			rc = EIO;
		}
		FUNC6(cm);
	}

	return (rc);
}