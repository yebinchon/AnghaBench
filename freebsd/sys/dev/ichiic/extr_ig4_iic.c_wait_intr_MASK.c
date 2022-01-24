#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ u_int ;
struct TYPE_8__ {int /*<<< orphan*/  io_lock; } ;
typedef  TYPE_1__ ig4iic_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int IG4_FIFOLVL_MASK ; 
 int IG4_INTR_ERR_MASK ; 
 int IG4_INTR_STOP_DET ; 
 int IG4_INTR_TX_EMPTY ; 
 int /*<<< orphan*/  IG4_REG_RAW_INTR_STAT ; 
 int /*<<< orphan*/  IG4_REG_TXFLR ; 
 int IIC_ETIMEOUT ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(ig4iic_softc_t *sc, uint32_t intr)
{
	uint32_t v;
	int error;
	int txlvl = -1;
	u_int count_us = 0;
	u_int limit_us = 25000; /* 25ms */

	for (;;) {
		/*
		 * Check requested status
		 */
		v = FUNC7(sc, IG4_REG_RAW_INTR_STAT);
		error = FUNC3(sc, v & IG4_INTR_ERR_MASK);
		if (error || (v & intr))
			break;

		/*
		 * When waiting for the transmit FIFO to become empty,
		 * reset the timeout if we see a change in the transmit
		 * FIFO level as progress is being made.
		 */
		if (intr & (IG4_INTR_TX_EMPTY | IG4_INTR_STOP_DET)) {
			v = FUNC7(sc, IG4_REG_TXFLR) & IG4_FIFOLVL_MASK;
			if (txlvl != v) {
				txlvl = v;
				count_us = 0;
			}
		}

		/*
		 * Stop if we've run out of time.
		 */
		if (count_us >= limit_us) {
			error = IIC_ETIMEOUT;
			break;
		}

		/*
		 * When polling is not requested let the interrupt do its work.
		 */
		if (!FUNC1(sc)) {
			FUNC5(&sc->io_lock);
			FUNC2(sc, intr | IG4_INTR_ERR_MASK);
			FUNC4(sc, &sc->io_lock, "i2cwait",
				  (hz + 99) / 100); /* sleep up to 10ms */
			FUNC2(sc, 0);
			FUNC6(&sc->io_lock);
			count_us += 10000;
		} else {
			FUNC0(25);
			count_us += 25;
		}
	}

	return (error);
}