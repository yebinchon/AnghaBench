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
struct xbd_softc {int /*<<< orphan*/  xbd_io_dmat; } ;
struct xbd_command {int /*<<< orphan*/  cm_datalen; int /*<<< orphan*/  cm_data; int /*<<< orphan*/  cm_map; int /*<<< orphan*/ * cm_bp; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  XBDCF_ASYNC_MAPPING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xbd_command*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct xbd_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xbd_softc*,struct xbd_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xbd_queue_cb ; 

__attribute__((used)) static int
FUNC3(struct xbd_softc *sc, struct xbd_command *cm)
{
	int error;

	if (cm->cm_bp != NULL)
		error = FUNC1(sc->xbd_io_dmat, cm->cm_map,
		    cm->cm_bp, xbd_queue_cb, cm, 0);
	else
		error = FUNC0(sc->xbd_io_dmat, cm->cm_map,
		    cm->cm_data, cm->cm_datalen, xbd_queue_cb, cm, 0);
	if (error == EINPROGRESS) {
		/*
		 * Maintain queuing order by freezing the queue.  The next
		 * command may not require as many resources as the command
		 * we just attempted to map, so we can't rely on bus dma
		 * blocking for it too.
		 */
		FUNC2(sc, cm, XBDCF_ASYNC_MAPPING);
		return (0);
	}

	return (error);
}