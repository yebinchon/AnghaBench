#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ stage; scalar_t__ error; } ;
struct TYPE_9__ {void* dw0; TYPE_1__ bits; } ;
typedef  TYPE_2__ mpu_ep_semaphore_t ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_3__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 void* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ POST_STAGE_ARMFW_READY ; 
 scalar_t__ POST_STAGE_AWAITING_HOST_RDY ; 
 scalar_t__ POST_STAGE_CHIP_RESET ; 
 int /*<<< orphan*/  csr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,void*) ; 

__attribute__((used)) static int
FUNC5(POCE_SOFTC sc)
{
	mpu_ep_semaphore_t post_status;
	int tmo = 60000;

	/* read semaphore CSR */
	post_status.dw0 = FUNC2(sc, csr, FUNC1(sc));

	/* if host is ready then wait for fw ready else send POST */
	if (post_status.bits.stage <= POST_STAGE_AWAITING_HOST_RDY) {
		post_status.bits.stage = POST_STAGE_CHIP_RESET;
		FUNC3(sc, csr, FUNC1(sc), post_status.dw0);
	}

	/* wait for FW ready */
	for (;;) {
		if (--tmo == 0)
			break;

		FUNC0(1000);

		post_status.dw0 = FUNC2(sc, csr, FUNC1(sc));
		if (post_status.bits.error) {
			FUNC4(sc->dev,
				  "POST failed: %x\n", post_status.dw0);
			return ENXIO;
		}
		if (post_status.bits.stage == POST_STAGE_ARMFW_READY)
			return 0;
	}

	FUNC4(sc->dev, "POST timed out: %x\n", post_status.dw0);

	return ENXIO;
}