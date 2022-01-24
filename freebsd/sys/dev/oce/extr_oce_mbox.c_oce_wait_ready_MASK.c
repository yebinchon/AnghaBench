#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SLIPORT_READY_TIMEOUT ; 
 scalar_t__ SLIPORT_STATUS_ERR_MASK ; 
 int /*<<< orphan*/  SLIPORT_STATUS_OFFSET ; 
 scalar_t__ SLIPORT_STATUS_RDY_MASK ; 
 scalar_t__ SLIPORT_STATUS_RN_MASK ; 
 int /*<<< orphan*/  db ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int
FUNC4(POCE_SOFTC sc)
{
#define SLIPORT_READY_TIMEOUT 30000
	uint32_t sliport_status, i;

	if (!FUNC1(sc)) 
		return (-1);

	for (i = 0; i < SLIPORT_READY_TIMEOUT; i++) {
		sliport_status = FUNC2(sc, db, SLIPORT_STATUS_OFFSET);
		if (sliport_status & SLIPORT_STATUS_RDY_MASK)
			return 0;

		if (sliport_status & SLIPORT_STATUS_ERR_MASK &&
			!(sliport_status & SLIPORT_STATUS_RN_MASK)) {
			FUNC3(sc->dev, "Error detected in the card\n");
			return EIO;
		}

		FUNC0(1000);
	}

	FUNC3(sc->dev, "Firmware wait timed out\n");

	return (-1);
}