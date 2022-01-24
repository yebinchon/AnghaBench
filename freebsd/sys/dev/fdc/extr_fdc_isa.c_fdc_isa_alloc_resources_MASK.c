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
typedef  int u_long ;
struct resource {int dummy; } ;
struct fdc_data {int* ridio; int* ioff; int flags; int dmachan; struct resource* res_drq; int /*<<< orphan*/  rid_drq; int /*<<< orphan*/ * res_irq; int /*<<< orphan*/  rid_irq; void** ioh; struct resource** resio; int /*<<< orphan*/  iot; int /*<<< orphan*/  fdc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FDC_MAXREG ; 
 int FDC_NODMA ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct resource* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int FUNC8 (struct resource*) ; 
 int FUNC9 (struct resource*) ; 

int
FUNC10(device_t dev, struct fdc_data *fdc)
{
	struct resource *res;
	int i, j, rid, newrid, nport;
	u_long port;

	fdc->fdc_dev = dev;
	rid = 0;
	for (i = 0; i < FDC_MAXREG; i++)
		fdc->resio[i] = NULL;

	nport = FUNC5(dev) ? 1 : 6;
	for (rid = 0; ; rid++) {
		newrid = rid;
		res = FUNC2(dev, SYS_RES_IOPORT, &newrid,
		    rid == 0 ? nport : 1, RF_ACTIVE);
		if (res == NULL)
			break;
		/*
		 * Mask off the upper bits of the register, and sanity
		 * check resource ranges.
		 */
		i = FUNC9(res) & 0x7;
		if (i + FUNC8(res) - 1 > FDC_MAXREG) {
			FUNC3(dev, SYS_RES_IOPORT, newrid, res);
			return (ENXIO);
		}
		for (j = 0; j < FUNC8(res); j++) {
			fdc->resio[i + j] = res;
			fdc->ridio[i + j] = newrid;
			fdc->ioff[i + j] = j;
			fdc->ioh[i + j] = FUNC6(res);
		}
	}
	if (fdc->resio[2] == NULL) {
		FUNC4(dev, "No FDOUT register!\n");
		return (ENXIO);
	}
	fdc->iot = FUNC7(fdc->resio[2]);
	if (fdc->resio[7] == NULL) {
		port = (FUNC9(fdc->resio[2]) & ~0x7) + 7;
		newrid = rid;
		res = FUNC0(dev, SYS_RES_IOPORT, &newrid, port,
		    port, 1, RF_ACTIVE);
		if (res == NULL) {
			FUNC4(dev, "Faking up FDCTL\n");
			fdc->resio[7] = fdc->resio[2];
			fdc->ridio[7] = fdc->ridio[2];
			fdc->ioff[7] = fdc->ioff[2] + 5;
			fdc->ioh[7] = fdc->ioh[2];
		} else {
			fdc->resio[7] = res;
			fdc->ridio[7] = newrid;
			fdc->ioff[7] = FUNC9(res) & 7;
			fdc->ioh[7] = FUNC6(res);
		}
	}

	fdc->res_irq = FUNC1(dev, SYS_RES_IRQ, &fdc->rid_irq,
	    RF_ACTIVE | RF_SHAREABLE);
	if (fdc->res_irq == NULL) {
		FUNC4(dev, "cannot reserve interrupt line\n");
		return (ENXIO);
	}

	if ((fdc->flags & FDC_NODMA) == 0) {
		fdc->res_drq = FUNC1(dev, SYS_RES_DRQ,
		    &fdc->rid_drq, RF_ACTIVE | RF_SHAREABLE);
		if (fdc->res_drq == NULL) {
			FUNC4(dev, "cannot reserve DMA request line\n");
			/* This is broken and doesn't work for ISA case */
			fdc->flags |= FDC_NODMA;
		} else
			fdc->dmachan = FUNC9(fdc->res_drq);
	}

	return (0);
}