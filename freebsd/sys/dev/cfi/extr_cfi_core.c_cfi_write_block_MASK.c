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
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int u_int ;
struct cfi_softc {int sc_cmdset; int sc_wrofs; int sc_wrbufsz; int* sc_wrbuf; int* sc_wrbufcpy; int sc_regions; int sc_maxbuf; int sc_width; int /*<<< orphan*/  sc_handle; int /*<<< orphan*/  sc_tag; scalar_t__* sc_max_timeouts; TYPE_1__* sc_region; } ;
typedef  scalar_t__ sbintime_t ;
typedef  int /*<<< orphan*/  register_t ;
struct TYPE_2__ {int r_blksz; } ;

/* Variables and functions */
 int AMD_ADDR_START ; 
 int /*<<< orphan*/  CFI_AMD_BLOCK_ERASE ; 
 int /*<<< orphan*/  CFI_AMD_ERASE_SECTOR ; 
 int CFI_AMD_MAXCHK ; 
 int /*<<< orphan*/  CFI_AMD_PROGRAM ; 
 int /*<<< orphan*/  CFI_BCS_BLOCK_ERASE ; 
 int /*<<< orphan*/  CFI_BCS_BUF_PROG_SETUP ; 
 int /*<<< orphan*/  CFI_BCS_CONFIRM ; 
 int /*<<< orphan*/  CFI_BCS_PROGRAM ; 
 int /*<<< orphan*/  CFI_BCS_READ_ARRAY ; 
 int /*<<< orphan*/  CFI_INTEL_LB ; 
 int /*<<< orphan*/  CFI_INTEL_LBS ; 
 scalar_t__ CFI_INTEL_STATUS_WSMS ; 
 int /*<<< orphan*/  CFI_INTEL_UB ; 
 size_t CFI_TIMEOUT_BUFWRITE ; 
 size_t CFI_TIMEOUT_ERASE ; 
 size_t CFI_TIMEOUT_WRITE ; 
#define  CFI_VEND_AMD_ECS 131 
#define  CFI_VEND_AMD_SCS 130 
#define  CFI_VEND_INTEL_ECS 129 
#define  CFI_VEND_INTEL_SCS 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cfi_softc*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cfi_softc*,int,int) ; 
 scalar_t__ FUNC10 (struct cfi_softc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct cfi_softc*) ; 
 int FUNC12 (struct cfi_softc*,int,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct cfi_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ FUNC18 () ; 

int
FUNC19(struct cfi_softc *sc)
{
	union {
		uint8_t		*x8;
		uint16_t	*x16;
		uint32_t	*x32;
	} ptr, cpyprt;
	register_t intr;
	int error, i, j, neederase = 0;
	uint32_t st;
	u_int wlen;
	sbintime_t start;
	u_int minsz;
	uint32_t val;

	/* Intel flash must be unlocked before modification */
	switch (sc->sc_cmdset) {
	case CFI_VEND_INTEL_ECS:
	case CFI_VEND_INTEL_SCS:
		FUNC13(sc, sc->sc_wrofs, CFI_INTEL_LBS);
		FUNC13(sc, sc->sc_wrofs, CFI_INTEL_UB);
		FUNC13(sc, sc->sc_wrofs, CFI_BCS_READ_ARRAY);
		break;
	}

	/* Check if an erase is required. */
	for (i = 0; i < sc->sc_wrbufsz; i++)
		if ((sc->sc_wrbuf[i] & sc->sc_wrbufcpy[i]) != sc->sc_wrbuf[i]) {
			neederase = 1;
			break;
		}

	if (neederase) {
		intr = FUNC15();
		start = FUNC18();
		/* Erase the block. */
		switch (sc->sc_cmdset) {
		case CFI_VEND_INTEL_ECS:
		case CFI_VEND_INTEL_SCS:
			FUNC13(sc, sc->sc_wrofs, CFI_BCS_BLOCK_ERASE);
			FUNC13(sc, sc->sc_wrofs, CFI_BCS_CONFIRM);
			break;
		case CFI_VEND_AMD_SCS:
		case CFI_VEND_AMD_ECS:
			/* find minimum sector size */
			minsz = sc->sc_region[0].r_blksz;
			for (i = 1; i < sc->sc_regions; i++) {
				if (sc->sc_region[i].r_blksz < minsz)
					minsz = sc->sc_region[i].r_blksz;
			}
			FUNC8(sc, sc->sc_wrofs, AMD_ADDR_START,
			    CFI_AMD_ERASE_SECTOR);
			FUNC8(sc, sc->sc_wrofs, 
			    sc->sc_wrofs >> (FUNC14(minsz) - 1),
			    CFI_AMD_BLOCK_ERASE);
			for (i = 0; i < CFI_AMD_MAXCHK; ++i) {
				if (FUNC9(sc, sc->sc_wrofs,
				    sc->sc_wrbufsz))
					break;
				FUNC0(10);
			}
			if (i == CFI_AMD_MAXCHK) {
				FUNC17("\nCFI Sector Erase time out error\n");
				return (ENODEV);
			}
			break;
		default:
			/* Better safe than sorry... */
			FUNC16(intr);
			return (ENODEV);
		}
		FUNC16(intr);
		error = FUNC12(sc, sc->sc_wrofs, start, 
		    CFI_TIMEOUT_ERASE);
		if (error)
			goto out;
	} else
		error = 0;

	/* Write the block using a multibyte write if supported. */
	ptr.x8 = sc->sc_wrbuf;
	cpyprt.x8 = sc->sc_wrbufcpy;
	if (sc->sc_maxbuf > sc->sc_width) {
		switch (sc->sc_cmdset) {
		case CFI_VEND_INTEL_ECS:
		case CFI_VEND_INTEL_SCS:
			for (i = 0; i < sc->sc_wrbufsz; i += wlen) {
				wlen = FUNC1(sc->sc_maxbuf, sc->sc_wrbufsz - i);

				intr = FUNC15();

				start = FUNC18();
				do {
					FUNC13(sc, sc->sc_wrofs + i,
					    CFI_BCS_BUF_PROG_SETUP);
					if (FUNC18() > start + sc->sc_max_timeouts[CFI_TIMEOUT_BUFWRITE]) {
						error = ETIMEDOUT;
						goto out;
					}
					st = FUNC10(sc, sc->sc_wrofs + i);
				} while (! (st & CFI_INTEL_STATUS_WSMS));

				FUNC13(sc, sc->sc_wrofs + i,
				    (wlen / sc->sc_width) - 1);
				switch (sc->sc_width) {
				case 1:
					FUNC5(sc->sc_tag,
					    sc->sc_handle, sc->sc_wrofs + i,
					    ptr.x8 + i, wlen);
					break;
				case 2:
					FUNC6(sc->sc_tag,
					    sc->sc_handle, sc->sc_wrofs + i,
					    ptr.x16 + i / 2, wlen / 2);
					break;
				case 4:
					FUNC7(sc->sc_tag,
					    sc->sc_handle, sc->sc_wrofs + i,
					    ptr.x32 + i / 4, wlen / 4);
					break;
				}

				FUNC13(sc, sc->sc_wrofs + i,
				    CFI_BCS_CONFIRM);

				FUNC16(intr);

				error = FUNC12(sc, sc->sc_wrofs + i,
				    start, CFI_TIMEOUT_BUFWRITE);
				if (error != 0)
					goto out;
			}
			goto out;
		default:
			/* Fall through to single word case */
			break;
		}

	}

	/* Write the block one byte/word at a time. */
	for (i = 0; i < sc->sc_wrbufsz; i += sc->sc_width) {

		/* Avoid writing unless we are actually changing bits */
		if (!neederase) {
			switch (sc->sc_width) {
			case 1:
				if(*(ptr.x8 + i) == *(cpyprt.x8 + i))
					continue;
				break;
			case 2:
				if(*(ptr.x16 + i / 2) == *(cpyprt.x16 + i / 2))
					continue;
				break;
			case 4:
				if(*(ptr.x32 + i / 4) == *(cpyprt.x32 + i / 4))
					continue;
				break;
			}
		}

		/*
		 * Make sure the command to start a write and the
		 * actual write happens back-to-back without any
		 * excessive delays.
		 */
		intr = FUNC15();

		start = FUNC18();
		switch (sc->sc_cmdset) {
		case CFI_VEND_INTEL_ECS:
		case CFI_VEND_INTEL_SCS:
			FUNC13(sc, sc->sc_wrofs + i, CFI_BCS_PROGRAM);
			break;
		case CFI_VEND_AMD_SCS:
		case CFI_VEND_AMD_ECS:
			FUNC8(sc, 0, AMD_ADDR_START, CFI_AMD_PROGRAM);
			break;
		}
		switch (sc->sc_width) {
		case 1:
			FUNC2(sc->sc_tag, sc->sc_handle,
			    sc->sc_wrofs + i, *(ptr.x8 + i));
			break;
		case 2:
			FUNC3(sc->sc_tag, sc->sc_handle,
			    sc->sc_wrofs + i, *(ptr.x16 + i / 2));
			break;
		case 4:
			FUNC4(sc->sc_tag, sc->sc_handle,
			    sc->sc_wrofs + i, *(ptr.x32 + i / 4));
			break;
		}
		
		FUNC16(intr);

		if (sc->sc_cmdset == CFI_VEND_AMD_ECS  ||
		    sc->sc_cmdset == CFI_VEND_AMD_SCS) {
			for (j = 0; j < CFI_AMD_MAXCHK; ++j) {
				switch (sc->sc_width) {
				case 1:
					val = *(ptr.x8 + i);
					break;
				case 2:
					val = *(ptr.x16 + i / 2);
					break;
				case 4:
					val = *(ptr.x32 + i / 4);
					break;
				}

				if (FUNC10(sc, sc->sc_wrofs + i) == val)
					break;
					
				FUNC0(10);
			}
			if (j == CFI_AMD_MAXCHK) {
				FUNC17("\nCFI Program Verify time out error\n");
				error = ENXIO;
				goto out;
			}
		} else {
			error = FUNC12(sc, sc->sc_wrofs, start,
			   CFI_TIMEOUT_WRITE);
			if (error)
				goto out;
		}
	}

	/* error is 0. */

 out:
	FUNC11(sc);

	/* Relock Intel flash */
	switch (sc->sc_cmdset) {
	case CFI_VEND_INTEL_ECS:
	case CFI_VEND_INTEL_SCS:
		FUNC13(sc, sc->sc_wrofs, CFI_INTEL_LBS);
		FUNC13(sc, sc->sc_wrofs, CFI_INTEL_LB);
		FUNC13(sc, sc->sc_wrofs, CFI_BCS_READ_ARRAY);
		break;
	}
	return (error);
}