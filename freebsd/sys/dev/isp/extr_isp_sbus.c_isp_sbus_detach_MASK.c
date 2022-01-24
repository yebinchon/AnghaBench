#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ isp_nirq; int /*<<< orphan*/  isp_lock; } ;
struct isp_sbussoftc {int /*<<< orphan*/  regs; int /*<<< orphan*/  rgd; int /*<<< orphan*/  irq; int /*<<< orphan*/  iqd; int /*<<< orphan*/  ih; TYPE_1__ sbus_isp; } ;
typedef  TYPE_1__ ispsoftc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_sbussoftc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct isp_sbussoftc *sbs = FUNC4(dev);
	ispsoftc_t *isp = &sbs->sbus_isp;
	int status;

	status = FUNC5(isp);
	if (status)
		return (status);
	FUNC0(isp);
	FUNC7(isp);
	FUNC1(isp);
	if (isp->isp_nirq > 0) {
		(void) FUNC3(dev, sbs->irq, sbs->ih);
		(void) FUNC2(dev, SYS_RES_IRQ, sbs->iqd,
		    sbs->irq);
	}
	(void) FUNC2(dev, SYS_RES_MEMORY, sbs->rgd, sbs->regs);
	FUNC6(isp);
	FUNC8(&isp->isp_lock);
	return (0);
}