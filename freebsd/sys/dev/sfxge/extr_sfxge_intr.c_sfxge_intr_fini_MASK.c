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
struct sfxge_intr {scalar_t__ state; int n_alloc; int /*<<< orphan*/  type; struct sfxge_intr_hdl* table; int /*<<< orphan*/ * msix_res; int /*<<< orphan*/  status; } ;
struct sfxge_softc {struct sfxge_intr intr; int /*<<< orphan*/  dev; } ;
struct sfxge_intr_hdl {scalar_t__ eih_rid; int /*<<< orphan*/  eih_res; } ;
typedef  int /*<<< orphan*/  efsys_mem_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_INTR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_SFXGE ; 
 scalar_t__ SFXGE_INTR_INITIALIZED ; 
 scalar_t__ SFXGE_INTR_UNINITIALIZED ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sfxge_intr_hdl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sfxge_softc*) ; 

void
FUNC6(struct sfxge_softc *sc)
{
	struct sfxge_intr_hdl *table;
	struct sfxge_intr *intr;
	efsys_mem_t *esmp;
	device_t dev;
	int i;

	dev = sc->dev;
	intr = &sc->intr;
	esmp = &intr->status;
	table = intr->table;

	FUNC0(intr->state == SFXGE_INTR_INITIALIZED,
	    ("intr->state != SFXGE_INTR_INITIALIZED"));

	/* Free DMA memory. */
	FUNC4(esmp);

	/* Free interrupt handles. */
	for (i = 0; i < intr->n_alloc; i++)
		FUNC1(dev, SYS_RES_IRQ,
		    table[i].eih_rid, table[i].eih_res);

	if (table[0].eih_rid != 0)
		FUNC3(dev);

	if (intr->msix_res != NULL)
		FUNC5(sc);

	/* Free the handle table */
	FUNC2(table, M_SFXGE);
	intr->table = NULL;
	intr->n_alloc = 0;

	/* Clear the interrupt type */
	intr->type = EFX_INTR_INVALID;

	intr->state = SFXGE_INTR_UNINITIALIZED;
}