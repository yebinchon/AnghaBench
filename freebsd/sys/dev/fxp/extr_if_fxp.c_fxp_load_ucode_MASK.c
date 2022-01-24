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
typedef  void* uint16_t ;
struct ucode {scalar_t__ revision; int length; int int_delay_offset; int bundle_max_offset; int /*<<< orphan*/ * ucode; } ;
struct TYPE_2__ {int /*<<< orphan*/  cbl_addr; scalar_t__ cbl_list; } ;
struct fxp_softc {int flags; scalar_t__ revision; int tunable_int_delay; int tunable_bundle_max; int /*<<< orphan*/  dev; int /*<<< orphan*/  cbl_map; int /*<<< orphan*/  cbl_tag; TYPE_1__ fxp_desc; } ;
struct fxp_cb_ucode {int link_addr; scalar_t__ cb_status; int /*<<< orphan*/ * ucode; void* cb_command; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FXP_CB_COMMAND_EL ; 
 int FXP_CB_COMMAND_UCODE ; 
 int /*<<< orphan*/  FXP_CSR_SCB_GENERAL ; 
 int FXP_FLAG_NO_UCODE ; 
 int FXP_FLAG_UCODE ; 
 int /*<<< orphan*/  FXP_SCB_COMMAND_CU_START ; 
 int /*<<< orphan*/  FXP_TXCB_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fxp_cb_ucode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fxp_softc*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fxp_softc*) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct ucode* ucode_table ; 

__attribute__((used)) static void
FUNC9(struct fxp_softc *sc)
{
	const struct ucode *uc;
	struct fxp_cb_ucode *cbp;
	int i;

	if (sc->flags & FXP_FLAG_NO_UCODE)
		return;

	for (uc = ucode_table; uc->ucode != NULL; uc++)
		if (sc->revision == uc->revision)
			break;
	if (uc->ucode == NULL)
		return;
	cbp = (struct fxp_cb_ucode *)sc->fxp_desc.cbl_list;
	cbp->cb_status = 0;
	cbp->cb_command = FUNC7(FXP_CB_COMMAND_UCODE | FXP_CB_COMMAND_EL);
	cbp->link_addr = 0xffffffff;    	/* (no) next command */
	for (i = 0; i < uc->length; i++)
		cbp->ucode[i] = FUNC8(uc->ucode[i]);
	if (uc->int_delay_offset)
		*(uint16_t *)&cbp->ucode[uc->int_delay_offset] =
		    FUNC7(sc->tunable_int_delay + sc->tunable_int_delay / 2);
	if (uc->bundle_max_offset)
		*(uint16_t *)&cbp->ucode[uc->bundle_max_offset] =
		    FUNC7(sc->tunable_bundle_max);
	/*
	 * Download the ucode to the chip.
	 */
	FUNC6(sc);
	FUNC1(sc->cbl_tag, sc->cbl_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	FUNC0(sc, FXP_CSR_SCB_GENERAL, sc->fxp_desc.cbl_addr);
	FUNC5(sc, FXP_SCB_COMMAND_CU_START);
	/* ...and wait for it to complete. */
	FUNC4(sc, &cbp->cb_status, sc->cbl_tag, sc->cbl_map);
	FUNC3(sc->dev,
	    "Microcode loaded, int_delay: %d usec  bundle_max: %d\n",
	    sc->tunable_int_delay,
	    uc->bundle_max_offset == 0 ? 0 : sc->tunable_bundle_max);
	sc->flags |= FXP_FLAG_UCODE;
	FUNC2(cbp, FXP_TXCB_SZ);
}