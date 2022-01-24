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
struct TYPE_3__ {int /*<<< orphan*/  link_up; } ;
struct bxe_softc {struct bxe_fastpath* fp; TYPE_1__ link_vars; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_queue_full_return; } ;
struct bxe_fastpath {TYPE_2__ eth_q_stats; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_fastpath*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,struct bxe_fastpath*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct bxe_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(if_t ifp)
{
    struct bxe_softc *sc;
    struct bxe_fastpath *fp;

    sc = FUNC5(ifp);

    if (!(FUNC4(ifp) & IFF_DRV_RUNNING)) {
        FUNC0(sc, "Interface not running, ignoring transmit request\n");
        return;
    }

    if (!sc->link_vars.link_up) {
        FUNC0(sc, "Interface link is down, ignoring transmit request\n");
        return;
    }

    fp = &sc->fp[0];

    if (FUNC4(ifp) & IFF_DRV_OACTIVE) {
        fp->eth_q_stats.tx_queue_full_return++;
        return;
    }

    FUNC1(fp);
    FUNC3(sc, ifp, fp);
    FUNC2(fp);
}