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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct bge_softc {int /*<<< orphan*/  bge_ifp; } ;

/* Variables and functions */
 int BGE_NVRAMACC_ENABLE ; 
 int BGE_NVRAMCMD_DONE ; 
 int BGE_NVRAMSWARB_CLR1 ; 
 int BGE_NVRAMSWARB_GNT1 ; 
 int BGE_NVRAMSWARB_SET1 ; 
 int /*<<< orphan*/  BGE_NVRAM_ACCESS ; 
 int /*<<< orphan*/  BGE_NVRAM_ADDR ; 
 int /*<<< orphan*/  BGE_NVRAM_CMD ; 
 int /*<<< orphan*/  BGE_NVRAM_RDDATA ; 
 int BGE_NVRAM_READCMD ; 
 int /*<<< orphan*/  BGE_NVRAM_SWARB ; 
 int BGE_TIMEOUT ; 
 int FUNC0 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static uint8_t
FUNC5(struct bge_softc *sc, int addr, uint8_t *dest)
{
	uint32_t access, byte = 0;
	int i;

	/* Lock. */
	FUNC1(sc, BGE_NVRAM_SWARB, BGE_NVRAMSWARB_SET1);
	for (i = 0; i < 8000; i++) {
		if (FUNC0(sc, BGE_NVRAM_SWARB) & BGE_NVRAMSWARB_GNT1)
			break;
		FUNC2(20);
	}
	if (i == 8000)
		return (1);

	/* Enable access. */
	access = FUNC0(sc, BGE_NVRAM_ACCESS);
	FUNC1(sc, BGE_NVRAM_ACCESS, access | BGE_NVRAMACC_ENABLE);

	FUNC1(sc, BGE_NVRAM_ADDR, addr & 0xfffffffc);
	FUNC1(sc, BGE_NVRAM_CMD, BGE_NVRAM_READCMD);
	for (i = 0; i < BGE_TIMEOUT * 10; i++) {
		FUNC2(10);
		if (FUNC0(sc, BGE_NVRAM_CMD) & BGE_NVRAMCMD_DONE) {
			FUNC2(10);
			break;
		}
	}

	if (i == BGE_TIMEOUT * 10) {
		FUNC4(sc->bge_ifp, "nvram read timed out\n");
		return (1);
	}

	/* Get result. */
	byte = FUNC0(sc, BGE_NVRAM_RDDATA);

	*dest = (FUNC3(byte) >> ((addr % 4) * 8)) & 0xFF;

	/* Disable access. */
	FUNC1(sc, BGE_NVRAM_ACCESS, access);

	/* Unlock. */
	FUNC1(sc, BGE_NVRAM_SWARB, BGE_NVRAMSWARB_CLR1);
	FUNC0(sc, BGE_NVRAM_SWARB);

	return (0);
}