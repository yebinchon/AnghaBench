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
struct mgb_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mgb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGB_MAC_DSBL ; 
 int /*<<< orphan*/  MGB_MAC_ENBL ; 
 int /*<<< orphan*/  MGB_MAC_RX ; 
 int /*<<< orphan*/  MGB_MAC_TX ; 
 int FUNC2 (struct mgb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct mgb_softc *sc)
{
	int err = 0;

	/* Stop MAC */
	FUNC0(sc, MGB_MAC_RX, MGB_MAC_ENBL);
	FUNC1(sc, MGB_MAC_TX, MGB_MAC_ENBL);
	if ((err = FUNC2(sc, MGB_MAC_RX, MGB_MAC_DSBL, 0)))
		return (err);
	if ((err = FUNC2(sc, MGB_MAC_TX, MGB_MAC_DSBL, 0)))
		return (err);
	return (err);
}