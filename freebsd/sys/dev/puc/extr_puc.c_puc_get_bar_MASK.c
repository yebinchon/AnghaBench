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
struct rman {int dummy; } ;
struct puc_softc {int /*<<< orphan*/  sc_dev; struct rman sc_iomem; struct rman sc_ioport; struct puc_bar* sc_bar; } ;
struct puc_bar {int b_rid; scalar_t__ b_type; int /*<<< orphan*/ * b_res; } ;
typedef  int /*<<< orphan*/  rman_res_t ;

/* Variables and functions */
 int PUC_PCI_BARS ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 scalar_t__ SYS_RES_IOPORT ; 
 scalar_t__ SYS_RES_MEMORY ; 
 void* FUNC0 (int /*<<< orphan*/ ,scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct rman*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct puc_bar *
FUNC5(struct puc_softc *sc, int rid)
{
	struct puc_bar *bar;
	struct rman *rm;
	rman_res_t end, start;
	int error, i;

	/* Find the BAR entry with the given RID. */
	i = 0;
	while (i < PUC_PCI_BARS && sc->sc_bar[i].b_rid != rid)
		i++;
	if (i < PUC_PCI_BARS)
		return (&sc->sc_bar[i]);

	/* Not found. If we're looking for an unused entry, return NULL. */
	if (rid == -1)
		return (NULL);

	/* Get an unused entry for us to fill.  */
	bar = FUNC5(sc, -1);
	if (bar == NULL)
		return (NULL);
	bar->b_rid = rid;
	bar->b_type = SYS_RES_IOPORT;
	bar->b_res = FUNC0(sc->sc_dev, bar->b_type,
	    &bar->b_rid, RF_ACTIVE);
	if (bar->b_res == NULL) {
		bar->b_rid = rid;
		bar->b_type = SYS_RES_MEMORY;
		bar->b_res = FUNC0(sc->sc_dev, bar->b_type,
		    &bar->b_rid, RF_ACTIVE);
		if (bar->b_res == NULL) {
			bar->b_rid = -1;
			return (NULL);
		}
	}

	/* Update our managed space. */
	rm = (bar->b_type == SYS_RES_IOPORT) ? &sc->sc_ioport : &sc->sc_iomem;
	start = FUNC3(bar->b_res);
	end = FUNC2(bar->b_res);
	error = FUNC4(rm, start, end);
	if (error) {
		FUNC1(sc->sc_dev, bar->b_type, bar->b_rid,
		    bar->b_res);
		bar->b_res = NULL;
		bar->b_rid = -1;
		bar = NULL;
	}

	return (bar);
}