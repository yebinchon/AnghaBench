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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct rtwn_softc {int nrxchains; } ;

/* Variables and functions */
 int /*<<< orphan*/  R12A_TXAGC_TABLE_SELECT ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int,int /*<<< orphan*/  const) ; 

void
FUNC2(struct rtwn_softc *sc, uint32_t vals[],
    const uint8_t regs[], int size)
{
	int c, i;

	/* Select page C. */
	FUNC0(sc, R12A_TXAGC_TABLE_SELECT, 0x80000000, 0);

	for (c = 0; c < sc->nrxchains; c++)
		for (i = 0; i < size; i++)
			vals[c * size + i] = FUNC1(sc, c, regs[i]);
}