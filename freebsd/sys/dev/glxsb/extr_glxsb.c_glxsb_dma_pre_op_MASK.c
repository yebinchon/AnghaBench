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
struct glxsb_softc {int /*<<< orphan*/  sc_dmat; } ;
struct glxsb_dma_map {int /*<<< orphan*/  dma_map; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct glxsb_softc *sc, struct glxsb_dma_map *dma)
{

	FUNC0(sc->sc_dmat, dma->dma_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}