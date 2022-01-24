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
struct sfxge_softc {int txq_count; int /*<<< orphan*/  enp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_softc*,int) ; 

void
FUNC2(struct sfxge_softc *sc)
{
	int index;

	index = sc->txq_count;
	while (--index >= 0)
		FUNC1(sc, index);

	/* Tear down the transmit module */
	FUNC0(sc->enp);
}