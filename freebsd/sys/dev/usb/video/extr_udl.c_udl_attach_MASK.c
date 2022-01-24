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
struct TYPE_4__ {int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int /*<<< orphan*/  device; } ;
struct TYPE_5__ {int fb_bpp; int fb_depth; int fb_width; int fb_stride; uintptr_t fb_vbase; int /*<<< orphan*/ * setblankmode; struct udl_softc* fb_priv; scalar_t__ fb_pbase; scalar_t__ fb_height; int /*<<< orphan*/  fb_size; int /*<<< orphan*/  fb_name; } ;
struct udl_softc {int sc_def_chip; int sc_chip; int sc_def_mode; int sc_cur_mode; int /*<<< orphan*/ * sc_fbdev; TYPE_2__ sc_fb_info; scalar_t__ sc_fb_addr; int /*<<< orphan*/  sc_fb_size; int /*<<< orphan*/  sc_cmd_buf_free; struct udl_cmd_buf* sc_cmd_buf_temp; int /*<<< orphan*/  sc_cmd_buf_pending; int /*<<< orphan*/ * sc_xfer_head; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_udev; int /*<<< orphan*/  sc_callout; int /*<<< orphan*/  sc_cv; } ;
struct udl_cmd_buf {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RWTUN ; 
 int DLMAX ; 
 int DLUNK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct udl_cmd_buf*,int /*<<< orphan*/ ) ; 
 size_t UDL_BULK_WRITE_0 ; 
 size_t UDL_BULK_WRITE_1 ; 
 int UDL_CMD_MAX_BUFFERS ; 
 int /*<<< orphan*/  FUNC5 (struct udl_softc*) ; 
 int UDL_MAX_MODES ; 
 int /*<<< orphan*/  UDL_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC6 (struct udl_softc*) ; 
 int USB_ERR_NORMAL_COMPLETION ; 
 int FUNC7 (struct usb_attach_arg*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 struct usb_attach_arg* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct udl_softc* FUNC13 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC14 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct udl_softc*) ; 
 int /*<<< orphan*/  udl_config ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udl_fb_setblankmode ; 
 int /*<<< orphan*/  FUNC22 (struct udl_softc*) ; 
 scalar_t__ FUNC23 (struct udl_softc*) ; 
 scalar_t__ FUNC24 (struct udl_softc*) ; 
 int FUNC25 (struct udl_softc*) ; 
 int FUNC26 (struct udl_softc*) ; 
 int /*<<< orphan*/  FUNC27 (struct udl_softc*) ; 
 TYPE_3__* udl_modes ; 
 int /*<<< orphan*/  FUNC28 (struct udl_softc*,struct usb_attach_arg*) ; 
 int /*<<< orphan*/  FUNC29 (struct udl_softc*) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 int FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udl_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC33(device_t dev)
{
	struct sysctl_ctx_list *ctx = FUNC14(dev);
	struct sysctl_oid *tree = FUNC15(dev);
	struct udl_softc *sc = FUNC13(dev);
	struct usb_attach_arg *uaa = FUNC11(dev);
	int error;
	int i;

	FUNC18(dev);

	FUNC19(&sc->sc_mtx, "UDL lock", NULL, MTX_DEF);
	FUNC9(&sc->sc_cv, "UDLCV");
	FUNC8(&sc->sc_callout, &sc->sc_mtx, 0);
	sc->sc_udev = uaa->device;

	error = FUNC31(uaa->device, &uaa->info.bIfaceIndex,
	    sc->sc_xfer, udl_config, UDL_N_TRANSFER, sc, &sc->sc_mtx);

	if (error) {
		FUNC0("usbd_transfer_setup error=%s\n", FUNC30(error));
		goto detach;
	}
	FUNC32(sc->sc_xfer[UDL_BULK_WRITE_0], &sc->sc_xfer_head[0]);
	FUNC32(sc->sc_xfer[UDL_BULK_WRITE_1], &sc->sc_xfer_head[1]);

	FUNC3(&sc->sc_xfer_head[0]);
	FUNC3(&sc->sc_xfer_head[1]);
	FUNC3(&sc->sc_cmd_buf_free);
	FUNC3(&sc->sc_cmd_buf_pending);

	sc->sc_def_chip = -1;
	sc->sc_chip = FUNC7(uaa);
	sc->sc_def_mode = -1;
	sc->sc_cur_mode = UDL_MAX_MODES;

	/* Allow chip ID to be overwritten */
	FUNC1(ctx, FUNC2(tree), OID_AUTO, "chipid_force",
	    CTLFLAG_RWTUN, &sc->sc_def_chip, 0, "chip ID");

	/* Export current chip ID */
	FUNC1(ctx, FUNC2(tree), OID_AUTO, "chipid",
	    CTLFLAG_RD, &sc->sc_chip, 0, "chip ID");

	if (sc->sc_def_chip > -1 && sc->sc_def_chip <= DLMAX) {
		FUNC16(dev, "Forcing chip ID to 0x%04x\n", sc->sc_def_chip);
		sc->sc_chip = sc->sc_def_chip;
	}
	/*
	 * The product might have more than one chip
	 */
	if (sc->sc_chip == DLUNK)
		FUNC28(sc, uaa);

	for (i = 0; i != UDL_CMD_MAX_BUFFERS; i++) {
		struct udl_cmd_buf *cb = &sc->sc_cmd_buf_temp[i];

		FUNC4(&sc->sc_cmd_buf_free, cb, entry);
	}

	/*
	 * Initialize chip.
	 */
	error = FUNC26(sc);
	if (error != USB_ERR_NORMAL_COMPLETION)
		goto detach;

	/*
	 * Select edid mode.
	 */
	FUNC29(sc);

	/* Allow default mode to be overwritten */
	FUNC1(ctx, FUNC2(tree), OID_AUTO, "mode_force",
	    CTLFLAG_RWTUN, &sc->sc_def_mode, 0, "mode");

	/* Export current mode */
	FUNC1(ctx, FUNC2(tree), OID_AUTO, "mode",
	    CTLFLAG_RD, &sc->sc_cur_mode, 0, "mode");

	i = sc->sc_def_mode;
	if (i > -1 && i < UDL_MAX_MODES) {
		if (udl_modes[i].chip <= sc->sc_chip) {
			FUNC16(dev, "Forcing mode to %d\n", i);
			sc->sc_cur_mode = i;
		}
	}
	/* Printout current mode */
	FUNC16(dev, "Mode selected %dx%d @ %dHz\n",
	    (int)FUNC25(sc),
	    (int)FUNC23(sc),
	    (int)FUNC24(sc));

	FUNC27(sc);

	/* Allocate frame buffer */
	FUNC22(sc);

	FUNC5(sc);
	FUNC20(sc);
	FUNC6(sc);

	sc->sc_fb_info.fb_name = FUNC12(dev);
	sc->sc_fb_info.fb_size = sc->sc_fb_size;
	sc->sc_fb_info.fb_bpp = 16;
	sc->sc_fb_info.fb_depth = 16;
	sc->sc_fb_info.fb_width = FUNC25(sc);
	sc->sc_fb_info.fb_height = FUNC23(sc);
	sc->sc_fb_info.fb_stride = sc->sc_fb_info.fb_width * 2;
	sc->sc_fb_info.fb_pbase = 0;
	sc->sc_fb_info.fb_vbase = (uintptr_t)sc->sc_fb_addr;
	sc->sc_fb_info.fb_priv = sc;
	sc->sc_fb_info.setblankmode = &udl_fb_setblankmode;

	sc->sc_fbdev = FUNC10(dev, "fbd", -1);
	if (sc->sc_fbdev == NULL)
		goto detach;
	if (FUNC17(sc->sc_fbdev) != 0)
		goto detach;

	return (0);

detach:
	FUNC21(dev);

	return (ENXIO);
}