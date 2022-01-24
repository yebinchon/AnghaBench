#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {scalar_t__ ready; } ;
struct TYPE_7__ {TYPE_1__ bits; int /*<<< orphan*/  dw0; } ;
typedef  TYPE_2__ pd_mpu_mbox_db_t ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_3__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PD_MPU_MBOX_DB ; 
 int /*<<< orphan*/  db ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(POCE_SOFTC sc, uint32_t tmo_sec)
{
	tmo_sec *= 10000;
	pd_mpu_mbox_db_t mbox_db;

	for (;;) {
		if (tmo_sec != 0) {
			if (--tmo_sec == 0)
				break;
		}

		mbox_db.dw0 = FUNC1(sc, db, PD_MPU_MBOX_DB);

		if (mbox_db.bits.ready)
			return 0;

		FUNC0(100);
	}

	FUNC2(sc->dev, "Mailbox timed out\n");

	return ETIMEDOUT;
}