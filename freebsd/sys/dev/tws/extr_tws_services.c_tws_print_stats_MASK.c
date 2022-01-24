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
struct TYPE_2__ {int /*<<< orphan*/  scsi_ios; int /*<<< orphan*/  ioctls; int /*<<< orphan*/  num_intrs; int /*<<< orphan*/  reqs_errored; int /*<<< orphan*/  reqs_out; int /*<<< orphan*/  reqs_in; } ;
struct tws_softc {int /*<<< orphan*/  stats_timer; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void (*) (void*),struct tws_softc*) ; 
 int hz ; 

void
FUNC2(void *arg)
{

    struct tws_softc *sc = (struct tws_softc *)arg;
     
    FUNC0(sc, "reqs(in, out)", sc->stats.reqs_in, sc->stats.reqs_out);
    FUNC0(sc, "reqs(err, intrs)", sc->stats.reqs_errored
                                      , sc->stats.num_intrs);
    FUNC0(sc, "reqs(ioctls, scsi)", sc->stats.ioctls
                                      , sc->stats.scsi_ios);
    FUNC1(&sc->stats_timer, 300 * hz, tws_print_stats, sc);
}