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
struct urtw_softc {int /*<<< orphan*/  sc_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  URTW_RX_DATA_LIST_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct urtw_softc *sc)
{
	FUNC0(sc, sc->sc_rx, URTW_RX_DATA_LIST_COUNT, 1);
}