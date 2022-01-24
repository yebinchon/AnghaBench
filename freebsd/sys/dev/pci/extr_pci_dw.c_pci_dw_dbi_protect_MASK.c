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
typedef  int /*<<< orphan*/  uint32_t ;
struct pci_dw_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBI_RO_WR_EN ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_MISC_CONTROL_1 ; 

__attribute__((used)) static void
FUNC2(struct pci_dw_softc *sc, bool protect)
{
	uint32_t reg;

	reg = FUNC0(sc, DW_MISC_CONTROL_1);
	if (protect)
		reg &= ~DBI_RO_WR_EN;
	else
		reg |= DBI_RO_WR_EN;
	FUNC1(sc, DW_MISC_CONTROL_1, reg);
}