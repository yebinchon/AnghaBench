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
struct mrsas_softc {int /*<<< orphan*/ * ioc_init_tag; int /*<<< orphan*/  ioc_init_dmamap; int /*<<< orphan*/ * ioc_init_mem; scalar_t__ ioc_init_phys_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(struct mrsas_softc *sc)
{
	if (sc->ioc_init_phys_mem)
		FUNC1(sc->ioc_init_tag, sc->ioc_init_dmamap);
	if (sc->ioc_init_mem != NULL)
		FUNC2(sc->ioc_init_tag, sc->ioc_init_mem, sc->ioc_init_dmamap);
	if (sc->ioc_init_tag != NULL)
		FUNC0(sc->ioc_init_tag);
}