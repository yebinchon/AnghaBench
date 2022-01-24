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
struct malo_softc {int /*<<< orphan*/ * malo_txq; } ;

/* Variables and functions */
 int MALO_NUM_TX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct malo_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct malo_softc *sc)
{
	int i;

	for (i = 0; i < MALO_NUM_TX_QUEUES; i++)
		FUNC0(sc, &sc->malo_txq[i]);
}