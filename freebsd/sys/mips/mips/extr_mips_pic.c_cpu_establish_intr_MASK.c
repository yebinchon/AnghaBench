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
struct resource {int dummy; } ;
struct mips_pic_softc {int /*<<< orphan*/  pic_dev; } ;
struct mips_pic_intr {int intr_irq; struct resource* res; } ;
typedef  int /*<<< orphan*/  driver_filter_t ;

/* Variables and functions */
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct resource*,int,int /*<<< orphan*/ *,void (*) (void*),void*,void**) ; 
 int FUNC3 (int,struct mips_pic_intr**) ; 
 int /*<<< orphan*/  mips_pic_mtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 

__attribute__((used)) static void
FUNC7(struct mips_pic_softc *sc, const char *name,
    driver_filter_t *filt, void (*handler)(void*), void *arg, int irq,
    int flags, void **cookiep)
{
	struct mips_pic_intr	*intr;
	struct resource		*res;
	int			 rid;
	int			 error;

	rid = -1;

	/* Fetch (or create) a fixed mapping */
	if ((error = FUNC3(irq, &intr)))
		FUNC6("Unable to map IRQ %d: %d", irq, error);

	/* Fetch the backing resource, if any */
	FUNC4(&mips_pic_mtx);
	res = intr->res;
	FUNC5(&mips_pic_mtx);

	/* Allocate our IRQ resource */
	if (res == NULL) {
		/* Optimistically perform resource allocation */
		rid = intr->intr_irq;
		res = FUNC0(sc->pic_dev, SYS_RES_IRQ, &rid,
		    intr->intr_irq, intr->intr_irq, 1, RF_SHAREABLE|RF_ACTIVE);

		if (res != NULL) {
			/* Try to update intr->res */
			FUNC4(&mips_pic_mtx);
			if (intr->res == NULL) {
				intr->res = res;
			}
			FUNC5(&mips_pic_mtx);

			/* If intr->res was updated concurrently, free our local
			 * resource allocation */
			if (intr->res != res) {
				FUNC1(sc->pic_dev, SYS_RES_IRQ,
				    rid, res);
			}
		} else {
			/* Maybe someone else allocated it? */
			FUNC4(&mips_pic_mtx);
			res = intr->res;
			FUNC5(&mips_pic_mtx);
		}
	
		if (res == NULL) {
			FUNC6("Unable to allocate IRQ %d->%u resource", irq,
			    intr->intr_irq);
		}
	}

	error = FUNC2(sc->pic_dev, res, flags, filt, handler, arg,
	    cookiep);
	if (error)
		FUNC6("Unable to add IRQ %d handler: %d", irq, error);
}