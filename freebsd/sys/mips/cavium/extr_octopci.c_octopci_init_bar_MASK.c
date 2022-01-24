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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct octopci_softc {unsigned int sc_io_next; unsigned int sc_mem1_next; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CVMX_OCT_PCI_IO_BASE ; 
 unsigned int CVMX_OCT_PCI_IO_SIZE ; 
 int CVMX_OCT_PCI_MEM1_BASE ; 
 unsigned int CVMX_OCT_PCI_MEM1_SIZE ; 
 int PCIM_BAR_IO_BASE ; 
#define  PCIM_BAR_MEM_64 128 
 scalar_t__ PCIM_BAR_MEM_BASE ; 
 int PCIM_BAR_MEM_TYPE ; 
 int /*<<< orphan*/  PCIM_CMD_MEMEN ; 
 int /*<<< orphan*/  PCIM_CMD_PORTEN ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ PCIR_BIOS ; 
 scalar_t__ FUNC1 (int) ; 
 struct octopci_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,scalar_t__,int,int) ; 
 void* FUNC6 (unsigned int,unsigned int) ; 

__attribute__((used)) static unsigned
FUNC7(device_t dev, unsigned b, unsigned s, unsigned f, unsigned barnum, uint8_t *commandp)
{
	struct octopci_softc *sc;
	uint64_t bar;
	unsigned size;
	int barsize;

	sc = FUNC2(dev);

	FUNC5(dev, b, s, f, FUNC0(barnum), 0xffffffff, 4);
	bar = FUNC4(dev, b, s, f, FUNC0(barnum), 4);

	if (bar == 0) {
		/* Bar not implemented; got to next bar.  */
		return (barnum + 1);
	}

	if (FUNC1(bar)) {
		size = ~(bar & PCIM_BAR_IO_BASE) + 1;

		sc->sc_io_next = FUNC6(sc->sc_io_next, size);
		if (sc->sc_io_next + size > CVMX_OCT_PCI_IO_SIZE) {
			FUNC3(dev, "%02x.%02x:%02x: no ports for BAR%u.\n",
			    b, s, f, barnum);
			return (barnum + 1);
		}
		FUNC5(dev, b, s, f, FUNC0(barnum),
		    CVMX_OCT_PCI_IO_BASE + sc->sc_io_next, 4);
		sc->sc_io_next += size;

		/*
		 * Enable I/O ports.
		 */
		*commandp |= PCIM_CMD_PORTEN;

		return (barnum + 1);
	} else {
		if (FUNC0(barnum) == PCIR_BIOS) {
			/*
			 * ROM BAR is always 32-bit.
			 */
			barsize = 1;
		} else {
			switch (bar & PCIM_BAR_MEM_TYPE) {
			case PCIM_BAR_MEM_64:
				/*
				 * XXX
				 * High 32 bits are all zeroes for now.
				 */
				FUNC5(dev, b, s, f, FUNC0(barnum + 1), 0, 4);
				barsize = 2;
				break;
			default:
				barsize = 1;
				break;
			}
		}

		size = ~(bar & (uint32_t)PCIM_BAR_MEM_BASE) + 1;

		sc->sc_mem1_next = FUNC6(sc->sc_mem1_next, size);
		if (sc->sc_mem1_next + size > CVMX_OCT_PCI_MEM1_SIZE) {
			FUNC3(dev, "%02x.%02x:%02x: no memory for BAR%u.\n",
			    b, s, f, barnum);
			return (barnum + barsize);
		}
		FUNC5(dev, b, s, f, FUNC0(barnum),
		    CVMX_OCT_PCI_MEM1_BASE + sc->sc_mem1_next, 4);
		sc->sc_mem1_next += size;

		/*
		 * Enable memory access.
		 */
		*commandp |= PCIM_CMD_MEMEN;

		return (barnum + barsize);
	}
}