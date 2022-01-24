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
typedef  int /*<<< orphan*/  uint16_t ;
struct fxp_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FXP_CB_STATUS_C ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/  volatile) ; 

__attribute__((used)) static void
FUNC4(struct fxp_softc *sc, volatile uint16_t *status,
    bus_dma_tag_t dmat, bus_dmamap_t map)
{
	int i;

	for (i = 10000; i > 0; i--) {
		FUNC0(2);
		FUNC1(dmat, map,
		    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
		if ((FUNC3(*status) & FXP_CB_STATUS_C) != 0)
			break;
	}
	if (i == 0)
		FUNC2(sc->dev, "DMA timeout\n");
}