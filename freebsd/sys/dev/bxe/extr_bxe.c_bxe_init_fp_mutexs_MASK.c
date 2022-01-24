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
struct bxe_softc {int num_queues; int unit; struct bxe_fastpath* fp; } ;
struct bxe_fastpath {int /*<<< orphan*/  rx_mtx_name; int /*<<< orphan*/  rx_mtx; int /*<<< orphan*/  tx_mtx_name; int /*<<< orphan*/  tx_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct bxe_softc *sc)
{
    int i;
    struct bxe_fastpath *fp;

    for (i = 0; i < sc->num_queues; i++) {

        fp = &sc->fp[i];

        FUNC1(fp->tx_mtx_name, sizeof(fp->tx_mtx_name),
            "bxe%d_fp%d_tx_lock", sc->unit, i);
        FUNC0(&fp->tx_mtx, fp->tx_mtx_name, NULL, MTX_DEF);

        FUNC1(fp->rx_mtx_name, sizeof(fp->rx_mtx_name),
            "bxe%d_fp%d_rx_lock", sc->unit, i);
        FUNC0(&fp->rx_mtx, fp->rx_mtx_name, NULL, MTX_DEF);
    }
}