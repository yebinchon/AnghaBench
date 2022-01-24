#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_12__ {TYPE_2__ pc; } ;
struct TYPE_13__ {int isp_nirq; int /*<<< orphan*/  isp_lock; TYPE_3__ isp_osinfo; int /*<<< orphan*/ * isp_param; } ;
struct isp_pcisoftc {TYPE_4__ pci_isp; scalar_t__ regs2; int /*<<< orphan*/  rgd2; int /*<<< orphan*/  rtp2; scalar_t__ regs1; int /*<<< orphan*/  rgd1; int /*<<< orphan*/  rtp1; scalar_t__ regs; int /*<<< orphan*/  rgd; int /*<<< orphan*/  rtp; scalar_t__ msicount; TYPE_1__* irq; } ;
typedef  TYPE_4__ ispsoftc_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_10__ {scalar_t__ irq; int /*<<< orphan*/  iqd; int /*<<< orphan*/  ih; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct isp_pcisoftc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct isp_pcisoftc *pcs = FUNC4(dev);
	ispsoftc_t *isp = &pcs->pci_isp;
	int i, status;

	status = FUNC6(isp);
	if (status)
		return (status);
	FUNC0(isp);
	FUNC8(isp);
	FUNC1(isp);
	for (i = 0; i < isp->isp_nirq; i++) {
		(void) FUNC3(dev, pcs->irq[i].irq, pcs->irq[i].ih);
		(void) FUNC2(dev, SYS_RES_IRQ, pcs->irq[i].iqd,
		    pcs->irq[i].irq);
	}
	if (pcs->msicount)
		FUNC10(dev);
	(void) FUNC2(dev, pcs->rtp, pcs->rgd, pcs->regs);
	if (pcs->regs1)
		(void) FUNC2(dev, pcs->rtp1, pcs->rgd1, pcs->regs1);
	if (pcs->regs2)
		(void) FUNC2(dev, pcs->rtp2, pcs->rgd2, pcs->regs2);
	FUNC7(isp);
	if (pcs->pci_isp.isp_param) {
		FUNC5(pcs->pci_isp.isp_param, M_DEVBUF);
		pcs->pci_isp.isp_param = NULL;
	}
	if (pcs->pci_isp.isp_osinfo.pc.ptr) {
		FUNC5(pcs->pci_isp.isp_osinfo.pc.ptr, M_DEVBUF);
		pcs->pci_isp.isp_osinfo.pc.ptr = NULL;
	}
	FUNC9(&isp->isp_lock);
	return (0);
}