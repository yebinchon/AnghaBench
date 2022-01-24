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
struct sfxge_intr {int n_alloc; struct sfxge_intr_hdl* table; int /*<<< orphan*/  type; } ;
struct sfxge_softc {struct sfxge_intr intr; int /*<<< orphan*/  dev; } ;
struct sfxge_intr_hdl {int eih_rid; struct resource* eih_res; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_INTR_LINE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_SFXGE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 struct sfxge_intr_hdl* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct sfxge_softc *sc)
{
	struct sfxge_intr_hdl *table;
	struct sfxge_intr *intr;
	struct resource *res;
	device_t dev;
	int rid;

	dev = sc->dev;
	intr = &sc->intr;

	rid = 0;
	res =  FUNC0(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);
	if (res == NULL)
		return (ENOMEM);

	table = FUNC1(sizeof(struct sfxge_intr_hdl), M_SFXGE, M_WAITOK);
	table[0].eih_rid = rid;
	table[0].eih_res = res;

	intr->type = EFX_INTR_LINE;
	intr->n_alloc = 1;
	intr->table = table;

	return (0);
}