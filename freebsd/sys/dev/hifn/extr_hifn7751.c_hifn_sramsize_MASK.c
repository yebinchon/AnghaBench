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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct hifn_softc {int sc_ramsize; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  i ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int HIFN_SRAM_GRANULARITY ; 
 int HIFN_SRAM_STEP_SIZE ; 
 scalar_t__ FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 scalar_t__ FUNC2 (struct hifn_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct hifn_softc*,int,int*) ; 

__attribute__((used)) static int
FUNC4(struct hifn_softc *sc)
{
	u_int32_t a;
	u_int8_t data[8];
	u_int8_t dataexpect[sizeof(data)];
	int32_t i;

	for (i = 0; i < sizeof(data); i++)
		data[i] = dataexpect[i] = i ^ 0x5a;

	for (i = HIFN_SRAM_GRANULARITY - 1; i >= 0; i--) {
		a = i * HIFN_SRAM_STEP_SIZE;
		FUNC1(&i, data, sizeof(i));
		FUNC3(sc, a, data);
	}

	for (i = 0; i < HIFN_SRAM_GRANULARITY; i++) {
		a = i * HIFN_SRAM_STEP_SIZE;
		FUNC1(&i, dataexpect, sizeof(i));
		if (FUNC2(sc, a, data) < 0)
			return (0);
		if (FUNC0(data, dataexpect, sizeof(data)) != 0)
			return (0);
		sc->sc_ramsize = a + HIFN_SRAM_STEP_SIZE;
	}

	return (0);
}