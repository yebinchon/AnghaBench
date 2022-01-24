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
struct irq {int rid; int /*<<< orphan*/  tag; int /*<<< orphan*/ * res; } ;
struct adapter {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char*,...) ; 

__attribute__((used)) static int
FUNC4(struct adapter *sc, struct irq *irq, int rid,
    driver_intr_t *handler, void *arg, char *name)
{
	int rc;

	irq->rid = rid;
	irq->res = FUNC0(sc->dev, SYS_RES_IRQ, &irq->rid,
	    RF_SHAREABLE | RF_ACTIVE);
	if (irq->res == NULL) {
		FUNC3(sc->dev,
		    "failed to allocate IRQ for rid %d, name %s.\n", rid, name);
		return (ENOMEM);
	}

	rc = FUNC2(sc->dev, irq->res, INTR_MPSAFE | INTR_TYPE_NET,
	    NULL, handler, arg, &irq->tag);
	if (rc != 0) {
		FUNC3(sc->dev,
		    "failed to setup interrupt for rid %d, name %s: %d\n",
		    rid, name, rc);
	} else if (name)
		FUNC1(sc->dev, irq->res, irq->tag, "%s", name);

	return (rc);
}