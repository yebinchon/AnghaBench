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
struct bxe_softc {int num_queues; struct bxe_fastpath* fp; } ;
struct bxe_fastpath {int /*<<< orphan*/  rx_mtx; int /*<<< orphan*/  tx_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct bxe_softc *sc)
{
    int i;
    struct bxe_fastpath *fp;

    for (i = 0; i < sc->num_queues; i++) {

        fp = &sc->fp[i];

        if (FUNC1(&fp->tx_mtx)) {
            FUNC0(&fp->tx_mtx);
        }

        if (FUNC1(&fp->rx_mtx)) {
            FUNC0(&fp->rx_mtx);
        }
    }
}