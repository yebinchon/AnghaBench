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
struct rtwn_softc {int dummy; } ;
struct rtwn_pci_softc {struct rtwn_softc pc_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  R88E_HIMR ; 
 int /*<<< orphan*/  R88E_HIMRE ; 
 int /*<<< orphan*/  R88E_INT_ENABLE ; 
 int /*<<< orphan*/  R88E_INT_ENABLE_EX ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(struct rtwn_pci_softc *pc)
{
	struct rtwn_softc *sc = &pc->pc_sc;

	/* Enable interrupts */
	FUNC0(sc, R88E_HIMR, R88E_INT_ENABLE);
	FUNC0(sc, R88E_HIMRE, R88E_INT_ENABLE_EX);
}