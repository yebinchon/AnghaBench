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
typedef  scalar_t__ uint32_t ;
struct nvram2env_softc {scalar_t__ bst; scalar_t__ addr; scalar_t__ maxsize; scalar_t__ sig; int flags; int /*<<< orphan*/  bsh; } ;
struct nvram {int /*<<< orphan*/  size; int /*<<< orphan*/  sig; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NVRAM_FLAGS_BROADCOM ; 
 int NVRAM_FLAGS_GENERIC ; 
 int NVRAM_FLAGS_NOCHECK ; 
 int NVRAM_FLAGS_UBOOT ; 
 int /*<<< orphan*/  NVRAM_MAX_SIZE ; 
 void* boothowto ; 
 void* bootverbose ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nvram2env_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (struct nvram*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 struct nvram* FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 scalar_t__ FUNC8 (struct nvram2env_softc*,scalar_t__) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 char* FUNC10 (char*,char) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 void* FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC14(device_t dev)
{
	struct nvram2env_softc 	*sc;
	struct nvram 		*nv;
	char *pair, *value, *assign;
	uint32_t sig, size, i, *tmp;

	sc = FUNC2(dev);

	if (sc->bst == 0 || sc->addr == 0)
		return (ENXIO);

	if (FUNC0(sc->bst, sc->addr, NVRAM_MAX_SIZE, 0,
		&sc->bsh) != 0)
		return (ENXIO);

	sig  = FUNC8(sc, 0);
	size = FUNC8(sc, 4);

	if (bootverbose)
		FUNC3(dev, " size=0x%05x maxsize=0x%05x\n", size,
				sc->maxsize);

	size = (size > sc->maxsize)?sc->maxsize:size;


	if (sig == sc->sig || (sc->flags & NVRAM_FLAGS_UBOOT))
	{

		/* align size to 32bit size*/
		size += 3;
		size &= ~3;

		nv = FUNC6(size, M_DEVBUF, M_WAITOK | M_ZERO);
		if (!nv)
			return (ENOMEM);
		/* set tmp pointer to begin of NVRAM */
		tmp = (uint32_t *) nv;

		/* use read_4 to swap bytes if it's required */
		for (i = 0; i < size; i += 4) {
			*tmp = FUNC8(sc, i);
			tmp++;
		}
		/* now tmp pointer is end of NVRAM */

		if (sc->flags & NVRAM_FLAGS_BROADCOM) {
			FUNC3(dev, "sig = %#x\n",  nv->sig);
			FUNC3(dev, "size = %#x\n", nv->size);
		}

		if (!(sc->flags & NVRAM_FLAGS_NOCHECK)) {
			/* TODO: need checksum verification */
		}

		if (sc->flags & NVRAM_FLAGS_GENERIC)
			pair = (char*)nv+4;
		if (sc->flags & NVRAM_FLAGS_UBOOT)
			pair = (char*)nv+4;
		else if (sc->flags & NVRAM_FLAGS_BROADCOM)
			pair = (char*)nv+20;
		else
			pair = (char*)nv+4;

		/* iterate over buffer till end. tmp points to end of NVRAM */
		for ( ; pair < (char*)tmp; 
		    pair += FUNC12(pair) + FUNC12(value) + 2 ) {

			if (!pair || (FUNC12(pair) == 0))
				break;

			/* hint.nvram.0. */
			assign = FUNC10(pair,'=');
			assign[0] = '\0';
			value = assign+1;

			if (bootverbose)
				FUNC7("ENV[%p]: %s=%s\n",
				    (void*)((char*)pair - (char*)nv),
				    pair, value);

			FUNC5(pair, value);

			if (FUNC9(pair, "WAN_MAC_ADDR") == 0) {
				/* Alias for MAC address of eth0 */
				if (bootverbose)
					FUNC7("ENV: aliasing "
					    "WAN_MAC_ADDR to ethaddr"
					    " = %s\n",  value);
				FUNC5("ethaddr", value);
			}
			else if (FUNC9(pair, "LAN_MAC_ADDR") == 0){
				/* Alias for MAC address of eth1 */
				if (bootverbose)
					FUNC7("ENV: aliasing "
					    "LAN_MAC_ADDR to eth1addr"
					    " = %s\n",  value);
				FUNC5("eth1addr", value);
			}

			if (FUNC11(pair, "bootverbose") == 0)
				bootverbose = FUNC13(value, 0, 0);
			if (FUNC11(pair, "boothowto"  ) == 0)
				boothowto   = FUNC13(value, 0, 0);

		}
		FUNC4(nv, M_DEVBUF);
	}

	FUNC1(sc->bst, sc->bsh, NVRAM_MAX_SIZE);

	return (0);
}