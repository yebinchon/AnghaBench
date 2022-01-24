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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct pci_params {int speed; int width; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CAP_ID_EXP ; 
 scalar_t__ PCI_EXP_LNKSTA ; 
 int PCI_EXP_LNKSTA_CLS ; 
 int PCI_EXP_LNKSTA_NLW ; 
 scalar_t__ FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,scalar_t__,int*) ; 

__attribute__((used)) static void FUNC2(struct adapter *adapter,
				   struct pci_params *p)
{
	u16 val;
	u32 pcie_cap;

	pcie_cap = FUNC0(adapter, PCI_CAP_ID_EXP);
	if (pcie_cap) {
		FUNC1(adapter, pcie_cap + PCI_EXP_LNKSTA, &val);
		p->speed = val & PCI_EXP_LNKSTA_CLS;
		p->width = (val & PCI_EXP_LNKSTA_NLW) >> 4;
	}
}