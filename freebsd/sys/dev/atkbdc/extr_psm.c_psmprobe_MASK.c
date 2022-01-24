#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int rate; int resolution; int accelfactor; int /*<<< orphan*/  packetsize; int /*<<< orphan*/ * syncmask; int /*<<< orphan*/  level; } ;
struct TYPE_4__ {int hwid; int buttons; int /*<<< orphan*/  model; int /*<<< orphan*/  type; int /*<<< orphan*/  iftype; } ;
struct psm_softc {int unit; int config; int /*<<< orphan*/  kbdc; TYPE_2__ mode; TYPE_2__ dflt_mode; int /*<<< orphan*/  flags; TYPE_1__ hw; int /*<<< orphan*/  muxport; int /*<<< orphan*/ * intr; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int /*<<< orphan*/  packetsize; int /*<<< orphan*/  syncmask; int /*<<< orphan*/  model; scalar_t__ (* probefunc ) (struct psm_softc*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int GENERIC_MOUSE_ENTRY ; 
 int /*<<< orphan*/  KBDC_ENABLE_AUX_PORT ; 
 int KBDC_RID_AUX ; 
 int KBD_AUX_CONTROL_BITS ; 
 int KBD_DISABLE_AUX_INT ; 
 int KBD_DISABLE_AUX_PORT ; 
 int KBD_DISABLE_KBD_INT ; 
 int KBD_DISABLE_KBD_PORT ; 
 int KBD_ENABLE_AUX_PORT ; 
 int KBD_KBD_CONTROL_BITS ; 
 int /*<<< orphan*/  MOUSE_IF_PS2 ; 
 int /*<<< orphan*/  MOUSE_MOUSE ; 
 int /*<<< orphan*/  MOUSE_PS2_PACKETSIZE ; 
 int /*<<< orphan*/  MOUSE_PS2_TAP ; 
 int /*<<< orphan*/  MOUSE_TRACKBALL ; 
 int /*<<< orphan*/  MOUSE_UNKNOWN ; 
 int /*<<< orphan*/  PROBE ; 
 int /*<<< orphan*/  PSMC_SET_DEFAULTS ; 
#define  PSM_4DMOUSE_ID 134 
#define  PSM_4DPLUS_ID 133 
#define  PSM_ACK 132 
#define  PSM_BALLPOINT_ID 131 
 int PSM_CONFIG_ACCEL ; 
 int PSM_CONFIG_FLAGS ; 
 int PSM_CONFIG_FORCETAP ; 
 int /*<<< orphan*/  PSM_CONFIG_HOOKRESUME ; 
 int PSM_CONFIG_IGNPORTERROR ; 
 int PSM_CONFIG_INITAFTERSUSPEND ; 
 int PSM_CONFIG_NOCHECKSYNC ; 
 int PSM_CONFIG_NOIDPROBE ; 
 int PSM_CONFIG_NORESET ; 
 int PSM_CONFIG_RESOLUTION ; 
#define  PSM_EXPLORER_ID 130 
#define  PSM_INTELLI_ID 129 
 int /*<<< orphan*/  PSM_LEVEL_BASE ; 
#define  PSM_MOUSE_ID 128 
 int /*<<< orphan*/  PSM_NEED_SYNCBITS ; 
 int /*<<< orphan*/  PSM_NOMUX ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct psm_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 
 char* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int) ; 
 int FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int,int) ; 
 void* FUNC30 (int /*<<< orphan*/ ,int) ; 
 int FUNC31 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC33 (struct psm_softc*,int /*<<< orphan*/ ) ; 
 int FUNC34 (int /*<<< orphan*/ ) ; 
 TYPE_3__* vendortype ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC36(device_t dev)
{
	int unit = FUNC7(dev);
	struct psm_softc *sc = FUNC6(dev);
	int stat[3];
	int command_byte;
	int mask;
	int rid;
	int i;

#if 0
	kbdc_debug(TRUE);
#endif

	/* see if IRQ is available */
	rid = KBDC_RID_AUX;
	sc->intr = FUNC2(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
	if (sc->intr == NULL) {
		if (bootverbose)
			FUNC8(dev, "unable to allocate IRQ\n");
		return (ENXIO);
	}
	FUNC3(dev, SYS_RES_IRQ, rid, sc->intr);

	sc->unit = unit;
	sc->kbdc = FUNC1(FUNC7(FUNC5(dev)));
	sc->config = FUNC4(dev) & PSM_CONFIG_FLAGS;
	/* XXX: for backward compatibility */
#if defined(PSM_HOOKRESUME) || defined(PSM_HOOKAPM)
	sc->config |=
#ifdef PSM_RESETAFTERSUSPEND
	PSM_CONFIG_INITAFTERSUSPEND;
#else
	PSM_CONFIG_HOOKRESUME;
#endif
#endif /* PSM_HOOKRESUME | PSM_HOOKAPM */
	sc->flags = 0;
	sc->muxport = PSM_NOMUX;
	if (bootverbose)
		++verbose;

	FUNC9(dev, "PS/2 Mouse");

	if (!FUNC21(sc->kbdc, TRUE)) {
		FUNC24("psm%d: unable to lock the controller.\n", unit);
		if (bootverbose)
			--verbose;
		return (ENXIO);
	}

	/*
	 * NOTE: two bits in the command byte controls the operation of the
	 * aux port (mouse port): the aux port disable bit (bit 5) and the aux
	 * port interrupt (IRQ 12) enable bit (bit 2).
	 */

	/* discard anything left after the keyboard initialization */
	FUNC11(sc->kbdc, 10);

	/* save the current command byte; it will be used later */
	mask = FUNC20(sc->kbdc) & ~KBD_AUX_CONTROL_BITS;
	command_byte = FUNC15(sc->kbdc);
	if (verbose)
		FUNC24("psm%d: current command byte:%04x\n", unit,
		    command_byte);
	if (command_byte == -1) {
		/* CONTROLLER ERROR */
		FUNC24("psm%d: unable to get the current command byte value.\n",
			unit);
		FUNC13(ENXIO);
	}

	/*
	 * disable the keyboard port while probing the aux port, which must be
	 * enabled during this routine
	 */
	if (!FUNC29(sc->kbdc,
	    KBD_KBD_CONTROL_BITS | KBD_AUX_CONTROL_BITS,
	    KBD_DISABLE_KBD_PORT | KBD_DISABLE_KBD_INT |
	    KBD_ENABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {
		/*
		 * this is CONTROLLER ERROR; I don't know how to recover
		 * from this error...
		 */
		if (FUNC0(sc->kbdc))
			FUNC27(sc->kbdc, command_byte);
		FUNC24("psm%d: unable to set the command byte.\n", unit);
		FUNC13(ENXIO);
	}
	FUNC35(sc->kbdc, KBDC_ENABLE_AUX_PORT);

	/*
	 * NOTE: `test_aux_port()' is designed to return with zero if the aux
	 * port exists and is functioning. However, some controllers appears
	 * to respond with zero even when the aux port doesn't exist. (It may
	 * be that this is only the case when the controller DOES have the aux
	 * port but the port is not wired on the motherboard.) The keyboard
	 * controllers without the port, such as the original AT, are
	 * supposed to return with an error code or simply time out. In any
	 * case, we have to continue probing the port even when the controller
	 * passes this test.
	 *
	 * XXX: some controllers erroneously return the error code 1, 2 or 3
	 * when it has a perfectly functional aux port. We have to ignore
	 * this error code. Even if the controller HAS error with the aux
	 * port, it will be detected later...
	 * XXX: another incompatible controller returns PSM_ACK (0xfa)...
	 */
	switch ((i = FUNC34(sc->kbdc))) {
	case 1:		/* ignore these errors */
	case 2:
	case 3:
	case PSM_ACK:
		if (verbose)
			FUNC24("psm%d: strange result for test aux port "
			    "(%d).\n", unit, i);
		/* FALLTHROUGH */
	case 0:		/* no error */
		break;
	case -1:	/* time out */
	default:	/* error */
		FUNC25(sc->kbdc);
		if (sc->config & PSM_CONFIG_IGNPORTERROR)
			break;
		if (FUNC0(sc->kbdc))
			FUNC27(sc->kbdc, command_byte);
		if (verbose)
			FUNC24("psm%d: the aux port is not functioning (%d).\n",
			    unit, i);
		FUNC13(ENXIO);
	}

	if (sc->config & PSM_CONFIG_NORESET) {
		/*
		 * Don't try to reset the pointing device.  It may possibly be
		 * left in an unknown state, though...
		 */
	} else {
		/*
		 * NOTE: some controllers appears to hang the `keyboard' when
		 * the aux port doesn't exist and `PSMC_RESET_DEV' is issued.
		 *
		 * Attempt to reset the controller twice -- this helps
		 * pierce through some KVM switches. The second reset
		 * is non-fatal.
		 */
		if (!FUNC26(sc->kbdc)) {
			FUNC25(sc->kbdc);
			if (FUNC0(sc->kbdc))
				FUNC27(sc->kbdc, command_byte);
			if (verbose)
				FUNC24("psm%d: failed to reset the aux "
				    "device.\n", unit);
			FUNC13(ENXIO);
		} else if (!FUNC26(sc->kbdc)) {
			FUNC25(sc->kbdc);
			if (verbose >= 2)
				FUNC24("psm%d: failed to reset the aux device "
				    "(2).\n", unit);
		}
	}

	/*
	 * both the aux port and the aux device are functioning, see if the
	 * device can be enabled. NOTE: when enabled, the device will start
	 * sending data; we shall immediately disable the device once we know
	 * the device can be enabled.
	 */
	if (!FUNC12(sc->kbdc) || !FUNC10(sc->kbdc)) {
		/* MOUSE ERROR */
		FUNC25(sc->kbdc);
		if (FUNC0(sc->kbdc))
			FUNC27(sc->kbdc, command_byte);
		if (verbose)
			FUNC24("psm%d: failed to enable the aux device.\n",
			    unit);
		FUNC13(ENXIO);
	}

	/* save the default values after reset */
	if (FUNC17(sc->kbdc, stat, 0, 3) >= 3) {
		sc->dflt_mode.rate = sc->mode.rate = stat[2];
		sc->dflt_mode.resolution = sc->mode.resolution = stat[1];
	} else {
		sc->dflt_mode.rate = sc->mode.rate = -1;
		sc->dflt_mode.resolution = sc->mode.resolution = -1;
	}

	/* hardware information */
	sc->hw.iftype = MOUSE_IF_PS2;

	/* verify the device is a mouse */
	sc->hw.hwid = FUNC14(sc->kbdc);
	if (!FUNC18(sc->hw.hwid)) {
		if (FUNC0(sc->kbdc))
			FUNC27(sc->kbdc, command_byte);
		if (verbose)
			FUNC24("psm%d: unknown device type (%d).\n", unit,
			    sc->hw.hwid);
		FUNC13(ENXIO);
	}
	switch (sc->hw.hwid) {
	case PSM_BALLPOINT_ID:
		sc->hw.type = MOUSE_TRACKBALL;
		break;
	case PSM_MOUSE_ID:
	case PSM_INTELLI_ID:
	case PSM_EXPLORER_ID:
	case PSM_4DMOUSE_ID:
	case PSM_4DPLUS_ID:
		sc->hw.type = MOUSE_MOUSE;
		break;
	default:
		sc->hw.type = MOUSE_UNKNOWN;
		break;
	}

	if (sc->config & PSM_CONFIG_NOIDPROBE) {
		sc->hw.buttons = 2;
		i = GENERIC_MOUSE_ENTRY;
	} else {
		/* # of buttons */
		sc->hw.buttons = FUNC16(sc->kbdc);

		/* other parameters */
		for (i = 0; vendortype[i].probefunc != NULL; ++i)
			if ((*vendortype[i].probefunc)(sc, PROBE)) {
				if (verbose >= 2)
					FUNC24("psm%d: found %s\n", unit,
					    FUNC23(vendortype[i].model));
				break;
			}
	}

	sc->hw.model = vendortype[i].model;

	sc->dflt_mode.level = PSM_LEVEL_BASE;
	sc->dflt_mode.packetsize = MOUSE_PS2_PACKETSIZE;
	sc->dflt_mode.accelfactor = (sc->config & PSM_CONFIG_ACCEL) >> 4;
	if (sc->config & PSM_CONFIG_NOCHECKSYNC)
		sc->dflt_mode.syncmask[0] = 0;
	else
		sc->dflt_mode.syncmask[0] = vendortype[i].syncmask;
	if (sc->config & PSM_CONFIG_FORCETAP)
		sc->dflt_mode.syncmask[0] &= ~MOUSE_PS2_TAP;
	sc->dflt_mode.syncmask[1] = 0;	/* syncbits */
	sc->mode = sc->dflt_mode;
	sc->mode.packetsize = vendortype[i].packetsize;

	/* set mouse parameters */
#if 0
	/*
	 * A version of Logitech FirstMouse+ won't report wheel movement,
	 * if SET_DEFAULTS is sent...  Don't use this command.
	 * This fix was found by Takashi Nishida.
	 */
	i = send_aux_command(sc->kbdc, PSMC_SET_DEFAULTS);
	if (verbose >= 2)
		printf("psm%d: SET_DEFAULTS return code:%04x\n", unit, i);
#endif
	if (sc->config & PSM_CONFIG_RESOLUTION)
		sc->mode.resolution =
		    FUNC30(sc->kbdc,
		    (sc->config & PSM_CONFIG_RESOLUTION) - 1);
	else if (sc->mode.resolution >= 0)
		sc->mode.resolution =
		    FUNC30(sc->kbdc, sc->dflt_mode.resolution);
	if (sc->mode.rate > 0)
		sc->mode.rate =
		    FUNC31(sc->kbdc, sc->dflt_mode.rate);
	FUNC32(sc->kbdc, 1);

	/* Record sync on the next data packet we see. */
	sc->flags |= PSM_NEED_SYNCBITS;

	/* just check the status of the mouse */
	/*
	 * NOTE: XXX there are some arcane controller/mouse combinations out
	 * there, which hung the controller unless there is data transmission
	 * after ACK from the mouse.
	 */
	if (FUNC17(sc->kbdc, stat, 0, 3) < 3)
		FUNC24("psm%d: failed to get status.\n", unit);
	else {
		/*
		 * When in its native mode, some mice operate with different
		 * default parameters than in the PS/2 compatible mode.
		 */
		sc->dflt_mode.rate = sc->mode.rate = stat[2];
		sc->dflt_mode.resolution = sc->mode.resolution = stat[1];
	}

	/* disable the aux port for now... */
	if (!FUNC29(sc->kbdc,
	    KBD_KBD_CONTROL_BITS | KBD_AUX_CONTROL_BITS,
	    (command_byte & KBD_KBD_CONTROL_BITS) |
	    KBD_DISABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {
		/*
		 * this is CONTROLLER ERROR; I don't know the proper way to
		 * recover from this error...
		 */
		if (FUNC0(sc->kbdc))
			FUNC27(sc->kbdc, command_byte);
		FUNC24("psm%d: unable to set the command byte.\n", unit);
		FUNC13(ENXIO);
	}

	/* done */
	FUNC22(sc->kbdc, mask | KBD_AUX_CONTROL_BITS);
	FUNC21(sc->kbdc, FALSE);
	return (0);
}