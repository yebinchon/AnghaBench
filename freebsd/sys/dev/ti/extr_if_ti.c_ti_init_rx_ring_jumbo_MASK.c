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
struct ti_softc {int ti_jumbo; } ;
struct ti_cmd_desc {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int TI_JUMBO_RX_RING_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct ti_softc*,int) ; 
 scalar_t__ FUNC1 (struct ti_softc*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct ti_softc *sc)
{
	struct ti_cmd_desc cmd;
	int i;

	for (i = 0; i < TI_JUMBO_RX_RING_CNT; i++) {
		if (FUNC1(sc, i, NULL) != 0)
			return (ENOBUFS);
	}

	sc->ti_jumbo = TI_JUMBO_RX_RING_CNT - 1;
	FUNC0(sc, TI_JUMBO_RX_RING_CNT - 1);

	return (0);
}