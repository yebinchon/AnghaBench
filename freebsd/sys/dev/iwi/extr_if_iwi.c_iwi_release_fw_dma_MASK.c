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
struct iwi_softc {int fw_flags; int /*<<< orphan*/ * fw_virtaddr; scalar_t__ fw_physaddr; int /*<<< orphan*/ * fw_map; int /*<<< orphan*/ * fw_dmat; scalar_t__ fw_dma_size; } ;

/* Variables and functions */
 int IWI_FW_HAVE_DMAT ; 
 int IWI_FW_HAVE_MAP ; 
 int IWI_FW_HAVE_PHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct iwi_softc *sc)
{
	if (sc->fw_flags & IWI_FW_HAVE_PHY)
		FUNC1(sc->fw_dmat, sc->fw_map);
	if (sc->fw_flags & IWI_FW_HAVE_MAP)
		FUNC2(sc->fw_dmat, sc->fw_virtaddr, sc->fw_map);
	if (sc->fw_flags & IWI_FW_HAVE_DMAT)
		FUNC0(sc->fw_dmat);

	sc->fw_flags = 0;
	sc->fw_dma_size = 0;
	sc->fw_dmat = NULL;
	sc->fw_map = NULL;
	sc->fw_physaddr = 0;
	sc->fw_virtaddr = NULL;
}