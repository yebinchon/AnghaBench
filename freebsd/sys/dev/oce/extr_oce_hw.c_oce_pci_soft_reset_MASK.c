#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cpu_reset; } ;
struct TYPE_4__ {int /*<<< orphan*/  dw0; TYPE_1__ bits; } ;
typedef  TYPE_2__ mpu_ep_control_t ;
typedef  int /*<<< orphan*/  POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MPU_EP_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csr ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(POCE_SOFTC sc)
{
	int rc;
	mpu_ep_control_t ctrl;

	ctrl.dw0 = FUNC1(sc, csr, MPU_EP_CONTROL);
	ctrl.bits.cpu_reset = 1;
	FUNC2(sc, csr, MPU_EP_CONTROL, ctrl.dw0);
	FUNC0(50);
	rc=FUNC3(sc);

	return rc;
}