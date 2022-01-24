#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_2__ {int enabled; int addr; int msg_data; int maxmsgnum; } ;
struct pci_devinst {TYPE_1__ pi_msi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_devinst*,int,int,int) ; 
 int PCIM_MSICTRL_64BIT ; 
 int PCIM_MSICTRL_MME_MASK ; 
 int PCIM_MSICTRL_MSI_ENABLE ; 
 int FUNC1 (struct pci_devinst*,int) ; 
 int FUNC2 (struct pci_devinst*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_devinst*) ; 

void
FUNC4(struct pci_devinst *pi, int capoff, int offset,
		int bytes, uint32_t val)
{
	uint16_t msgctrl, rwmask, msgdata, mme;
	uint32_t addrlo;

	/*
	 * If guest is writing to the message control register make sure
	 * we do not overwrite read-only fields.
	 */
	if ((offset - capoff) == 2 && bytes == 2) {
		rwmask = PCIM_MSICTRL_MME_MASK | PCIM_MSICTRL_MSI_ENABLE;
		msgctrl = FUNC1(pi, offset);
		msgctrl &= ~rwmask;
		msgctrl |= val & rwmask;
		val = msgctrl;

		addrlo = FUNC2(pi, capoff + 4);
		if (msgctrl & PCIM_MSICTRL_64BIT)
			msgdata = FUNC1(pi, capoff + 12);
		else
			msgdata = FUNC1(pi, capoff + 8);

		mme = msgctrl & PCIM_MSICTRL_MME_MASK;
		pi->pi_msi.enabled = msgctrl & PCIM_MSICTRL_MSI_ENABLE ? 1 : 0;
		if (pi->pi_msi.enabled) {
			pi->pi_msi.addr = addrlo;
			pi->pi_msi.msg_data = msgdata;
			pi->pi_msi.maxmsgnum = 1 << (mme >> 4);
		} else {
			pi->pi_msi.maxmsgnum = 0;
		}
		FUNC3(pi);
	}

	FUNC0(pi, offset, val, bytes);
}