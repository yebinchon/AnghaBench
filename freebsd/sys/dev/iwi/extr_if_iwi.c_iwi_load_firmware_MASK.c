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
typedef  int /*<<< orphan*/  u_char ;
struct iwi_softc {int fw_physaddr; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  fw_map; int /*<<< orphan*/  fw_dmat; int /*<<< orphan*/ * fw_virtaddr; } ;
struct iwi_fw {int size; int /*<<< orphan*/  name; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int FUNC0 (struct iwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EIO ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int IWI_CB_DEFAULT_CTL ; 
 int /*<<< orphan*/  IWI_CB_MAXDATALEN ; 
 int /*<<< orphan*/  IWI_CSR_AUTOINC_ADDR ; 
 int /*<<< orphan*/  IWI_CSR_AUTOINC_DATA ; 
 int /*<<< orphan*/  IWI_CSR_CTL ; 
 int /*<<< orphan*/  IWI_CSR_INTR_MASK ; 
 int /*<<< orphan*/  IWI_CSR_RST ; 
 int IWI_CTL_ALLOW_STANDBY ; 
 int IWI_INTR_MASK ; 
 int /*<<< orphan*/  FUNC4 (struct iwi_softc*) ; 
 int IWI_RST_MASTER_DISABLED ; 
 int IWI_RST_STOP_MASTER ; 
 int FUNC5 (struct iwi_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iwi_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct iwi_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct iwi_softc *sc, const struct iwi_fw *fw)
{
	u_char *p, *end;
	uint32_t sentinel, ctl, src, dst, sum, len, mlen, tmp;
	int ntries, error;

	FUNC4(sc);

	/* copy firmware image to DMA memory */
	FUNC9(sc->fw_virtaddr, fw->data, fw->size);

	/* make sure the adapter will get up-to-date values */
	FUNC7(sc->fw_dmat, sc->fw_map, BUS_DMASYNC_PREWRITE);

	/* tell the adapter where the command blocks are stored */
	FUNC6(sc, 0x3000a0, 0x27000);

	/*
	 * Store command blocks into adapter's internal memory using register
	 * indirections. The adapter will read the firmware image through DMA
	 * using information stored in command blocks.
	 */
	src = sc->fw_physaddr;
	p = sc->fw_virtaddr;
	end = p + fw->size;
	FUNC1(sc, IWI_CSR_AUTOINC_ADDR, 0x27000);

	while (p < end) {
		dst = FUNC3(p); p += 4; src += 4;
		len = FUNC3(p); p += 4; src += 4;
		p += len;

		while (len > 0) {
			mlen = FUNC10(len, IWI_CB_MAXDATALEN);

			ctl = IWI_CB_DEFAULT_CTL | mlen;
			sum = ctl ^ src ^ dst;

			/* write a command block */
			FUNC1(sc, IWI_CSR_AUTOINC_DATA, ctl);
			FUNC1(sc, IWI_CSR_AUTOINC_DATA, src);
			FUNC1(sc, IWI_CSR_AUTOINC_DATA, dst);
			FUNC1(sc, IWI_CSR_AUTOINC_DATA, sum);

			src += mlen;
			dst += mlen;
			len -= mlen;
		}
	}

	/* write a fictive final command block (sentinel) */
	sentinel = FUNC0(sc, IWI_CSR_AUTOINC_ADDR);
	FUNC1(sc, IWI_CSR_AUTOINC_DATA, 0);

	tmp = FUNC0(sc, IWI_CSR_RST);
	tmp &= ~(IWI_RST_MASTER_DISABLED | IWI_RST_STOP_MASTER);
	FUNC1(sc, IWI_CSR_RST, tmp);

	/* tell the adapter to start processing command blocks */
	FUNC6(sc, 0x3000a4, 0x540100);

	/* wait until the adapter reaches the sentinel */
	for (ntries = 0; ntries < 400; ntries++) {
		if (FUNC5(sc, 0x3000d0) >= sentinel)
			break;
		FUNC2(100);
	}
	/* sync dma, just in case */
	FUNC7(sc->fw_dmat, sc->fw_map, BUS_DMASYNC_POSTWRITE);
	if (ntries == 400) {
		FUNC8(sc->sc_dev,
		    "timeout processing command blocks for %s firmware\n",
		    fw->name);
		return EIO;
	}

	/* we're done with command blocks processing */
	FUNC6(sc, 0x3000a4, 0x540c00);

	/* allow interrupts so we know when the firmware is ready */
	FUNC1(sc, IWI_CSR_INTR_MASK, IWI_INTR_MASK);

	/* tell the adapter to initialize the firmware */
	FUNC1(sc, IWI_CSR_RST, 0);

	tmp = FUNC0(sc, IWI_CSR_CTL);
	FUNC1(sc, IWI_CSR_CTL, tmp | IWI_CTL_ALLOW_STANDBY);

	/* wait at most one second for firmware initialization to complete */
	if ((error = FUNC11(sc, &sc->sc_mtx, 0, "iwiinit", hz)) != 0) {
		FUNC8(sc->sc_dev, "timeout waiting for %s firmware "
		    "initialization to complete\n", fw->name);
	}

	return error;
}