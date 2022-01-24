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
struct mrsas_softc {int /*<<< orphan*/ * ctlr_info_tag; int /*<<< orphan*/  ctlr_info_dmamap; int /*<<< orphan*/ * ctlr_info_mem; scalar_t__ ctlr_info_phys_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(struct mrsas_softc *sc)
{
	if (sc->ctlr_info_phys_addr)
		FUNC1(sc->ctlr_info_tag, sc->ctlr_info_dmamap);
	if (sc->ctlr_info_mem != NULL)
		FUNC2(sc->ctlr_info_tag, sc->ctlr_info_mem, sc->ctlr_info_dmamap);
	if (sc->ctlr_info_tag != NULL)
		FUNC0(sc->ctlr_info_tag);
}