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
typedef  int /*<<< orphan*/  uint16_t ;
struct rtwn_softc {int dummy; } ;
struct rtwn_pci_softc {int /*<<< orphan*/  pc_sh; int /*<<< orphan*/  pc_st; } ;

/* Variables and functions */
 struct rtwn_pci_softc* FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct rtwn_softc *sc, uint16_t addr, uint8_t val)
{
	struct rtwn_pci_softc *pc = FUNC0(sc);

	FUNC1(pc->pc_st, pc->pc_sh, addr, val);

	return (0);
}