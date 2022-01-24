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
struct iwi_softc {int fw_dma_size; int /*<<< orphan*/  fw_flags; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  fw_physaddr; int /*<<< orphan*/  fw_virtaddr; int /*<<< orphan*/  fw_map; int /*<<< orphan*/  fw_dmat; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  IWI_FW_HAVE_DMAT ; 
 int /*<<< orphan*/  IWI_FW_HAVE_MAP ; 
 int /*<<< orphan*/  IWI_FW_HAVE_PHY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  iwi_dma_map_addr ; 
 int /*<<< orphan*/  FUNC5 (struct iwi_softc*) ; 

__attribute__((used)) static int
FUNC6(struct iwi_softc *sc, int size)
{
	if (sc->fw_dma_size >= size)
		return 0;
	if (FUNC0(FUNC3(sc->sc_dev), 4, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    size, 1, size, 0, NULL, NULL, &sc->fw_dmat) != 0) {
		FUNC4(sc->sc_dev,
		    "could not create firmware DMA tag\n");
		goto error;
	}
	sc->fw_flags |= IWI_FW_HAVE_DMAT;
	if (FUNC2(sc->fw_dmat, &sc->fw_virtaddr, 0,
	    &sc->fw_map) != 0) {
		FUNC4(sc->sc_dev,
		    "could not allocate firmware DMA memory\n");
		goto error;
	}
	sc->fw_flags |= IWI_FW_HAVE_MAP;
	if (FUNC1(sc->fw_dmat, sc->fw_map, sc->fw_virtaddr,
	    size, iwi_dma_map_addr, &sc->fw_physaddr, 0) != 0) {
		FUNC4(sc->sc_dev, "could not load firmware DMA map\n");
		goto error;
	}
	sc->fw_flags |= IWI_FW_HAVE_PHY;
	sc->fw_dma_size = size;
	return 0;

error:
	FUNC5(sc);
	return 1;
}