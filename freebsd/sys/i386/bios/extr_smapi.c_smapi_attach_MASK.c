#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct smapi_softc {int /*<<< orphan*/ * res; scalar_t__ rid; struct smapi_bios_header* header; int /*<<< orphan*/  dev; int /*<<< orphan*/  cdev; scalar_t__ smapi32_entry; } ;
struct smapi_bios_header {int prot32_segment; char* prot32_offset; int information; int real16_segment; char* real16_offset; int prot16_segment; char* prot16_offset; int /*<<< orphan*/  checksum; int /*<<< orphan*/  length; int /*<<< orphan*/  version_minor; int /*<<< orphan*/  version_major; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SMAPI_PROT_16BIT ; 
 int SMAPI_PROT_32BIT ; 
 int SMAPI_REAL_VM86 ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 struct smapi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__ smapi_cdevsw ; 

__attribute__((used)) static int
FUNC9 (device_t dev)
{
	struct smapi_softc *sc;
	int error;

	sc = FUNC4(dev);
	error = 0;

	sc->dev = dev;
	sc->rid = 0;
	sc->res = FUNC2(dev, SYS_RES_MEMORY, &sc->rid,
		 RF_ACTIVE);
	if (sc->res == NULL) {
		FUNC6(dev, "Unable to allocate memory resource.\n");
		error = ENOMEM;
		goto bad;
	}
	sc->header = (struct smapi_bios_header *)FUNC8(sc->res);
	sc->smapi32_entry = (u_int32_t)FUNC0(
					sc->header->prot32_segment +
					sc->header->prot32_offset);

        sc->cdev = FUNC7(&smapi_cdevsw,
			FUNC5(sc->dev),
			UID_ROOT, GID_WHEEL, 0600,
			"%s%d",
			smapi_cdevsw.d_name,
			FUNC5(sc->dev));

	FUNC6(dev, "Version: %d.%02d, Length: %d, Checksum: 0x%02x\n",
		FUNC1(sc->header->version_major),
		FUNC1(sc->header->version_minor),
		sc->header->length,
		sc->header->checksum);
	FUNC6(dev, "Information=0x%b\n",
		sc->header->information,
		"\020"
		"\001REAL_VM86"
		"\002PROTECTED_16"
		"\003PROTECTED_32");

	if (bootverbose) {
		if (sc->header->information & SMAPI_REAL_VM86)
			FUNC6(dev, "Real/VM86 mode: Segment 0x%04x, Offset 0x%04x\n",
				sc->header->real16_segment,
				sc->header->real16_offset);
		if (sc->header->information & SMAPI_PROT_16BIT)
			FUNC6(dev, "16-bit Protected mode: Segment 0x%08x, Offset 0x%04x\n",
				sc->header->prot16_segment,
				sc->header->prot16_offset);
		if (sc->header->information & SMAPI_PROT_32BIT)
			FUNC6(dev, "32-bit Protected mode: Segment 0x%08x, Offset 0x%08x\n",
				sc->header->prot32_segment,
				sc->header->prot32_offset);
	}

	return (0);
bad:
	if (sc->res)
		FUNC3(dev, SYS_RES_MEMORY, sc->rid, sc->res);
	return (error);
}