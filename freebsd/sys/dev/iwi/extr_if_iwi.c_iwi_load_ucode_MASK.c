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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct iwi_softc {int /*<<< orphan*/  sc_dev; } ;
struct iwi_fw {char* data; size_t size; } ;

/* Variables and functions */
 int FUNC0 (struct iwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  IWI_CSR_RST ; 
 int /*<<< orphan*/  FUNC3 (struct iwi_softc*) ; 
 int IWI_MEM_EEPROM_EVENT ; 
 int IWI_RST_MASTER_DISABLED ; 
 int IWI_RST_PRINCETON_RESET ; 
 int IWI_RST_STOP_MASTER ; 
 int FUNC4 (struct iwi_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwi_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iwi_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iwi_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct iwi_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int
FUNC11(struct iwi_softc *sc, const struct iwi_fw *fw)
{
	uint32_t tmp;
	const uint16_t *w;
	const char *uc = fw->data;
	size_t size = fw->size;
	int i, ntries, error;

	FUNC3(sc);
	error = 0;
	FUNC1(sc, IWI_CSR_RST, FUNC0(sc, IWI_CSR_RST) |
	    IWI_RST_STOP_MASTER);
	for (ntries = 0; ntries < 5; ntries++) {
		if (FUNC0(sc, IWI_CSR_RST) & IWI_RST_MASTER_DISABLED)
			break;
		FUNC2(10);
	}
	if (ntries == 5) {
		FUNC9(sc->sc_dev, "timeout waiting for master\n");
		error = EIO;
		goto fail;
	}

	FUNC8(sc, 0x3000e0, 0x80000000);
	FUNC2(5000);

	tmp = FUNC0(sc, IWI_CSR_RST);
	tmp &= ~IWI_RST_PRINCETON_RESET;
	FUNC1(sc, IWI_CSR_RST, tmp);

	FUNC2(5000);
	FUNC8(sc, 0x3000e0, 0);
	FUNC2(1000);
	FUNC8(sc, IWI_MEM_EEPROM_EVENT, 1);
	FUNC2(1000);
	FUNC8(sc, IWI_MEM_EEPROM_EVENT, 0);
	FUNC2(1000);
	FUNC6(sc, 0x200000, 0x00);
	FUNC6(sc, 0x200000, 0x40);
	FUNC2(1000);

	/* write microcode into adapter memory */
	for (w = (const uint16_t *)uc; size > 0; w++, size -= 2)
		FUNC7(sc, 0x200010, FUNC10(*w));

	FUNC6(sc, 0x200000, 0x00);
	FUNC6(sc, 0x200000, 0x80);

	/* wait until we get an answer */
	for (ntries = 0; ntries < 100; ntries++) {
		if (FUNC4(sc, 0x200000) & 1)
			break;
		FUNC2(100);
	}
	if (ntries == 100) {
		FUNC9(sc->sc_dev,
		    "timeout waiting for ucode to initialize\n");
		error = EIO;
		goto fail;
	}

	/* read the answer or the firmware will not initialize properly */
	for (i = 0; i < 7; i++)
		FUNC5(sc, 0x200004);

	FUNC6(sc, 0x200000, 0x00);

fail:
	return error;
}