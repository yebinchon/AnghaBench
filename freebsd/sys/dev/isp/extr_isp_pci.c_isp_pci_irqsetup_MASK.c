#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct isp_pcisoftc {int msicount; TYPE_2__* irq; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {int isp_nirq; TYPE_1__ isp_osinfo; } ;
typedef  TYPE_3__ ispsoftc_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_12__ {int iqd; int /*<<< orphan*/  ih; int /*<<< orphan*/ * irq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  ISP_IFLAGS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int ISP_MAX_IRQS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int FUNC5 (int,int) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct isp_pcisoftc* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC14 (int,int) ; 
 int /*<<< orphan*/ * isp_platform_intr ; 
 int /*<<< orphan*/ * isp_platform_intr_atio ; 
 int /*<<< orphan*/ * isp_platform_intr_resp ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int*) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static int
FUNC20(ispsoftc_t *isp)
{
	device_t dev = isp->isp_osinfo.dev;
	struct isp_pcisoftc *pcs = FUNC11(dev);
	driver_intr_t *f;
	int i, max_irq;

	/* Allocate IRQs only once. */
	if (isp->isp_nirq > 0)
		return (0);

	FUNC2(isp);
	if (FUNC0(isp)) {
		max_irq = FUNC4(isp) ? 3 : (FUNC3(isp) ? 2 : 0);
		FUNC19(FUNC10(dev),
		    FUNC12(dev), "msix", &max_irq);
		max_irq = FUNC14(ISP_MAX_IRQS, max_irq);
		pcs->msicount = FUNC14(FUNC18(dev), max_irq);
		if (pcs->msicount > 0 &&
		    FUNC16(dev, &pcs->msicount) != 0)
			pcs->msicount = 0;
	}
	if (pcs->msicount == 0) {
		max_irq = 1;
		FUNC19(FUNC10(dev),
		    FUNC12(dev), "msi", &max_irq);
		max_irq = FUNC14(1, max_irq);
		pcs->msicount = FUNC14(FUNC17(dev), max_irq);
		if (pcs->msicount > 0 &&
		    FUNC15(dev, &pcs->msicount) != 0)
			pcs->msicount = 0;
	}
	for (i = 0; i < FUNC5(1, pcs->msicount); i++) {
		pcs->irq[i].iqd = i + (pcs->msicount > 0);
		pcs->irq[i].irq = FUNC6(dev, SYS_RES_IRQ,
		    &pcs->irq[i].iqd, RF_ACTIVE | RF_SHAREABLE);
		if (pcs->irq[i].irq == NULL) {
			FUNC13(dev, "could not allocate interrupt\n");
			break;
		}
		if (i == 0)
			f = isp_platform_intr;
		else if (i == 1)
			f = isp_platform_intr_resp;
		else
			f = isp_platform_intr_atio;
		if (FUNC9(dev, pcs->irq[i].irq, ISP_IFLAGS, NULL,
		    f, isp, &pcs->irq[i].ih)) {
			FUNC13(dev, "could not setup interrupt\n");
			(void) FUNC8(dev, SYS_RES_IRQ,
			    pcs->irq[i].iqd, pcs->irq[i].irq);
			break;
		}
		if (pcs->msicount > 1) {
			FUNC7(dev, pcs->irq[i].irq, pcs->irq[i].ih,
			    "%d", i);
		}
		isp->isp_nirq = i + 1;
	}
	FUNC1(isp);

	return (isp->isp_nirq == 0);
}