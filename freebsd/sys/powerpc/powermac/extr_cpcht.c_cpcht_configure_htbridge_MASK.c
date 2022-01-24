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
typedef  int u_int ;
struct ofw_pci_register {int /*<<< orphan*/  phys_hi; } ;
struct cpcht_softc {int sc_populated_slots; int sc_data; TYPE_1__* htirq_map; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcir ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int ht_source; int ht_base; int eoi_data; int apple_eoi; int /*<<< orphan*/  irq_type; } ;

/* Variables and functions */
 int HTAPIC_MASK ; 
 int /*<<< orphan*/  IRQ_HT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int,int,int,int) ; 
 int PCICAP_ID ; 
 int PCICAP_NEXTPTR ; 
 int PCIM_HTCAP_INTERRUPT ; 
 int PCIM_HTCMD_CAP_MASK ; 
 int PCIM_STATUS_CAPPRESENT ; 
 int PCIR_CAP_PTR ; 
 int PCIR_DEVVENDOR ; 
 int PCIR_HT_COMMAND ; 
 int PCIR_STATUS ; 
 int PCIY_HT ; 
 struct cpcht_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int,int) ; 

__attribute__((used)) static void
FUNC8(device_t dev, phandle_t child)
{
	struct cpcht_softc *sc;
	struct ofw_pci_register pcir;
	int ptr, nextptr;
	uint32_t vend, val;
	int i, nirq, irq;
	u_int b, f, s;

	sc = FUNC6(dev);
	if (FUNC3(child, "reg", (pcell_t *)&pcir, sizeof(pcir)) == -1)
		return;

	b = FUNC0(pcir.phys_hi);
	s = FUNC1(pcir.phys_hi);
	f = FUNC2(pcir.phys_hi);

	/*
	 * Mark this slot is populated. The remote south bridge does
	 * not like us talking to unpopulated slots on the root bus.
	 */
	sc->sc_populated_slots |= (1 << s);

	/*
	 * Next build up any HT->MPIC mappings for this sub-bus. One would
	 * naively hope that enabling, disabling, and EOIing interrupts would
	 * cause the appropriate HT bus transactions to that effect. This is
	 * not the case.
	 *
	 * Instead, we have to muck about on the HT peer's root PCI bridges,
	 * figure out what interrupts they send, enable them, and cache
	 * the location of their WaitForEOI registers so that we can
	 * send EOIs later.
	 */

	/* All the devices we are interested in have caps */
	if (!(FUNC4(dev, b, s, f, PCIR_STATUS, 2)
	    & PCIM_STATUS_CAPPRESENT))
		return;

	nextptr = FUNC4(dev, b, s, f, PCIR_CAP_PTR, 1);
	while (nextptr != 0) {
		ptr = nextptr;
		nextptr = FUNC4(dev, b, s, f,
		    ptr + PCICAP_NEXTPTR, 1);

		/* Find the HT IRQ capabilities */
		if (FUNC4(dev, b, s, f,
		    ptr + PCICAP_ID, 1) != PCIY_HT)
			continue;

		val = FUNC4(dev, b, s, f, ptr + PCIR_HT_COMMAND, 2);
		if ((val & PCIM_HTCMD_CAP_MASK) != PCIM_HTCAP_INTERRUPT)
			continue;

		/* Ask for the IRQ count */
		FUNC5(dev, b, s, f, ptr + PCIR_HT_COMMAND, 0x1, 1);
		nirq = FUNC4(dev, b, s, f, ptr + 4, 4);
		nirq = ((nirq >> 16) & 0xff) + 1;

		FUNC7(dev, "%d HT IRQs on device %d.%d\n", nirq, s, f);

		for (i = 0; i < nirq; i++) {
			FUNC5(dev, b, s, f,
			     ptr + PCIR_HT_COMMAND, 0x10 + (i << 1), 1);
			irq = FUNC4(dev, b, s, f, ptr + 4, 4);

			/*
			 * Mask this interrupt for now.
			 */
			FUNC5(dev, b, s, f, ptr + 4,
			    irq | HTAPIC_MASK, 4);
			irq = (irq >> 16) & 0xff;

			sc->htirq_map[irq].irq_type = IRQ_HT;
			sc->htirq_map[irq].ht_source = i;
			sc->htirq_map[irq].ht_base = sc->sc_data + 
			    (((((s & 0x1f) << 3) | (f & 0x07)) << 8) | (ptr));

			FUNC5(dev, b, s, f,
			     ptr + PCIR_HT_COMMAND, 0x11 + (i << 1), 1);
			sc->htirq_map[irq].eoi_data =
			    FUNC4(dev, b, s, f, ptr + 4, 4) |
			    0x80000000;

			/*
			 * Apple uses a non-compliant IO/APIC that differs
			 * in how we signal EOIs. Check if this device was 
			 * made by Apple, and act accordingly.
			 */
			vend = FUNC4(dev, b, s, f,
			    PCIR_DEVVENDOR, 4);
			if ((vend & 0xffff) == 0x106b)
				sc->htirq_map[irq].apple_eoi = 
				 (sc->htirq_map[irq].ht_base - ptr) + 0x60;
		}
	}
}