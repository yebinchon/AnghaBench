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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_int16_t ;
struct wi_softc {scalar_t__ wi_bus_type; int /*<<< orphan*/ * mem; void* wi_bmemhandle; void* wi_bmemtag; int /*<<< orphan*/  mem_rid; int /*<<< orphan*/ * local; int /*<<< orphan*/  local_rid; void* wi_localhandle; void* wi_localtag; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct wi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wi_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct wi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ WI_BUS_PCI_NATIVE ; 
 int WI_CMD_BUSY ; 
 int /*<<< orphan*/  WI_COMMAND ; 
 int /*<<< orphan*/  WI_COR_OFFSET ; 
 int WI_COR_VALUE ; 
 int /*<<< orphan*/  WI_EVENT_ACK ; 
 int /*<<< orphan*/  WI_HFA384X_SWSUPPORT0_OFF ; 
 int /*<<< orphan*/  WI_INT_EN ; 
 int /*<<< orphan*/  WI_LOCAL_INTCSR ; 
 int /*<<< orphan*/  WI_LOCAL_INTEN ; 
 int /*<<< orphan*/  WI_PCICOR_OFF ; 
 int WI_PCICOR_RESET ; 
 int /*<<< orphan*/  WI_PCI_IORES ; 
 int /*<<< orphan*/  WI_PCI_LMEMRES ; 
 int /*<<< orphan*/  WI_PCI_LOCALRES ; 
 int /*<<< orphan*/  WI_PCI_MEMRES ; 
 int WI_PRISM2STA_MAGIC ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wi_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct wi_softc		*sc;
	u_int32_t		command;
	u_int16_t		reg;
	int			error;
	int			timeout;

	sc = FUNC9(dev);

	if (sc->wi_bus_type != WI_BUS_PCI_NATIVE) {
		error = FUNC13(dev, WI_PCI_IORES);
		if (error)
			return (error);

		/* Make sure interrupts are disabled. */
		FUNC3(sc, WI_INT_EN, 0);
		FUNC3(sc, WI_EVENT_ACK, 0xFFFF);

		/* We have to do a magic PLX poke to enable interrupts */
		sc->local_rid = WI_PCI_LOCALRES;
		sc->local = FUNC5(dev, SYS_RES_IOPORT,
		    &sc->local_rid, RF_ACTIVE);
		sc->wi_localtag = FUNC12(sc->local);
		sc->wi_localhandle = FUNC11(sc->local);
		command = FUNC7(sc->wi_localtag, sc->wi_localhandle,
		    WI_LOCAL_INTCSR);
		command |= WI_LOCAL_INTEN;
		FUNC8(sc->wi_localtag, sc->wi_localhandle,
		    WI_LOCAL_INTCSR, command);
		FUNC6(dev, SYS_RES_IOPORT, sc->local_rid,
		    sc->local);
		sc->local = NULL;

		sc->mem_rid = WI_PCI_MEMRES;
		sc->mem = FUNC5(dev, SYS_RES_MEMORY,
					&sc->mem_rid, RF_ACTIVE);
		if (sc->mem == NULL) {
			FUNC10(dev, "couldn't allocate memory\n");
			FUNC15(dev);
			return (ENXIO);
		}
		sc->wi_bmemtag = FUNC12(sc->mem);
		sc->wi_bmemhandle = FUNC11(sc->mem);

		/*
		 * Write COR to enable PC card
		 * This is a subset of the protocol that the pccard bus code
		 * would do.  In theory, we should parse the CIS to find the
		 * COR offset.  In practice, the COR_OFFSET is always 0x3e0.
		 */
		FUNC1(sc, WI_COR_OFFSET, WI_COR_VALUE); 
		reg = FUNC0(sc, WI_COR_OFFSET);
		if (reg != WI_COR_VALUE) {
			FUNC10(dev, "CSM_READ_1(WI_COR_OFFSET) "
			    "wanted %d, got %d\n", WI_COR_VALUE, reg);
			FUNC15(dev);
			return (ENXIO);
		}
	} else {
		error = FUNC13(dev, WI_PCI_LMEMRES);
		if (error)
			return (error);

		FUNC3(sc, WI_PCICOR_OFF, WI_PCICOR_RESET);
		FUNC4(250000);

		FUNC3(sc, WI_PCICOR_OFF, 0x0000);
		FUNC4(500000);

		timeout=2000000;
		while ((--timeout > 0) &&
		    (FUNC2(sc, WI_COMMAND) & WI_CMD_BUSY))
			FUNC4(10);

		if (timeout == 0) {
			FUNC10(dev, "couldn't reset prism pci core.\n");
			FUNC15(dev);
			return(ENXIO);
		}
	}

	FUNC3(sc, WI_HFA384X_SWSUPPORT0_OFF, WI_PRISM2STA_MAGIC);
	reg = FUNC2(sc, WI_HFA384X_SWSUPPORT0_OFF);
	if (reg != WI_PRISM2STA_MAGIC) {
		FUNC10(dev,
		    "CSR_READ_2(WI_HFA384X_SWSUPPORT0_OFF) "
		    "wanted %d, got %d\n", WI_PRISM2STA_MAGIC, reg);
		FUNC15(dev);
		return (ENXIO);
	}

	error = FUNC14(dev);
	if (error != 0)
		FUNC15(dev);
	return (error);
}