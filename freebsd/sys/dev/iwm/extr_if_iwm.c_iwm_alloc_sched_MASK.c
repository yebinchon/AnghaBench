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
struct iwm_softc {int /*<<< orphan*/  txq; int /*<<< orphan*/  sched_dma; int /*<<< orphan*/  sc_dmat; } ;
struct iwm_agn_scd_bc_tbl {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct iwm_softc *sc)
{
	/* TX scheduler rings must be aligned on a 1KB boundary. */
	return FUNC0(sc->sc_dmat, &sc->sched_dma,
	    FUNC1(sc->txq) * sizeof(struct iwm_agn_scd_bc_tbl), 1024);
}