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
struct vtscsi_softc {int vtscsi_flags; int vtscsi_max_nsegs; int /*<<< orphan*/  vtscsi_dev; int /*<<< orphan*/  vtscsi_request_vq; } ;

/* Variables and functions */
 int VTSCSI_FLAG_INDIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct vtscsi_softc *sc)
{
	int rqsize;

	if ((sc->vtscsi_flags & VTSCSI_FLAG_INDIRECT) == 0) {
		/*
		 * Ensure the assertions in virtqueue_enqueue(),
		 * even if the hypervisor reports a bad seg_max.
		 */
		rqsize = FUNC1(sc->vtscsi_request_vq);
		if (sc->vtscsi_max_nsegs > rqsize) {
			FUNC0(sc->vtscsi_dev,
			    "clamping seg_max (%d %d)\n", sc->vtscsi_max_nsegs,
			    rqsize);
			sc->vtscsi_max_nsegs = rqsize;
		}
	}
}