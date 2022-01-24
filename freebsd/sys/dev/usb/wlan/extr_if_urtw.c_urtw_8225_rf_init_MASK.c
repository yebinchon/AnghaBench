#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct urtw_softc {int /*<<< orphan*/  sc_mtx; } ;
struct TYPE_5__ {int reg; int val; } ;

/* Variables and functions */
 int URTW_8225_ADDR_0_DATA_MAGIC3 ; 
 int URTW_8225_ADDR_0_DATA_MAGIC4 ; 
 int URTW_8225_ADDR_0_DATA_MAGIC5 ; 
 int URTW_8225_ADDR_0_MAGIC ; 
 int URTW_8225_ADDR_1_MAGIC ; 
 int URTW_8225_ADDR_2_DATA_MAGIC1 ; 
 int URTW_8225_ADDR_2_DATA_MAGIC2 ; 
 int URTW_8225_ADDR_2_MAGIC ; 
 int /*<<< orphan*/  URTW_8225_ANAPARAM_ON ; 
 int /*<<< orphan*/  URTW_BRSR ; 
 int /*<<< orphan*/  URTW_CONFIG3 ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_CONFIG ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_NORMAL ; 
 int /*<<< orphan*/  URTW_HSSI_PARA ; 
 int /*<<< orphan*/  URTW_RF_PARA ; 
 int /*<<< orphan*/  URTW_RF_TIMING ; 
 int /*<<< orphan*/  URTW_TESTR ; 
 unsigned int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct urtw_softc*) ; 
 scalar_t__ FUNC3 (struct urtw_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct urtw_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct urtw_softc*,int,int) ; 
 int* urtw_8225_agc ; 
 TYPE_1__* urtw_8225_rf_part1 ; 
 TYPE_1__* urtw_8225_rf_part2 ; 
 TYPE_1__* urtw_8225_rf_part3 ; 
 scalar_t__ FUNC6 (struct urtw_softc*,int) ; 
 int* urtw_8225_rxgain ; 
 scalar_t__ FUNC7 (struct urtw_softc*,int) ; 
 scalar_t__ FUNC8 (struct urtw_softc*,int) ; 
 scalar_t__ FUNC9 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct urtw_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct urtw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static usb_error_t
FUNC17(struct urtw_softc *sc)
{
	unsigned int i;
	uint16_t data;
	usb_error_t error;

	error = FUNC1(sc, URTW_8225_ANAPARAM_ON);
	if (error)
		goto fail;

	error = FUNC9(sc);
	if (error)
		goto fail;

	FUNC14(sc, URTW_RF_TIMING, 0x000a8008);
	FUNC11(sc, URTW_BRSR, &data);		/* XXX ??? */
	FUNC13(sc, URTW_BRSR, 0xffff);
	FUNC14(sc, URTW_RF_PARA, 0x100044);

	error = FUNC12(sc, URTW_EPROM_CMD_CONFIG);
	if (error)
		goto fail;
	FUNC15(sc, URTW_CONFIG3, 0x44);
	error = FUNC12(sc, URTW_EPROM_CMD_NORMAL);
	if (error)
		goto fail;

	error = FUNC2(sc);
	if (error)
		goto fail;
	FUNC16(&sc->sc_mtx, 1000);

	for (i = 0; i < FUNC0(urtw_8225_rf_part1); i++) {
		FUNC10(sc, urtw_8225_rf_part1[i].reg,
		    urtw_8225_rf_part1[i].val);
		FUNC16(&sc->sc_mtx, 1);
	}
	FUNC16(&sc->sc_mtx, 100);
	FUNC10(sc,
	    URTW_8225_ADDR_2_MAGIC, URTW_8225_ADDR_2_DATA_MAGIC1);
	FUNC16(&sc->sc_mtx, 200);
	FUNC10(sc,
	    URTW_8225_ADDR_2_MAGIC, URTW_8225_ADDR_2_DATA_MAGIC2);
	FUNC16(&sc->sc_mtx, 200);
	FUNC10(sc,
	    URTW_8225_ADDR_0_MAGIC, URTW_8225_ADDR_0_DATA_MAGIC3);

	for (i = 0; i < 95; i++) {
		FUNC10(sc, URTW_8225_ADDR_1_MAGIC, (uint8_t)(i + 1));
		FUNC10(sc, URTW_8225_ADDR_2_MAGIC, urtw_8225_rxgain[i]);
	}

	FUNC10(sc,
	    URTW_8225_ADDR_0_MAGIC, URTW_8225_ADDR_0_DATA_MAGIC4);
	FUNC10(sc,
	    URTW_8225_ADDR_0_MAGIC, URTW_8225_ADDR_0_DATA_MAGIC5);

	for (i = 0; i < 128; i++) {
		FUNC5(sc, 0xb, urtw_8225_agc[i]);
		FUNC16(&sc->sc_mtx, 1);
		FUNC5(sc, 0xa, (uint8_t)i + 0x80);
		FUNC16(&sc->sc_mtx, 1);
	}

	for (i = 0; i < FUNC0(urtw_8225_rf_part2); i++) {
		FUNC5(sc, urtw_8225_rf_part2[i].reg,
		    urtw_8225_rf_part2[i].val);
		FUNC16(&sc->sc_mtx, 1);
	}

	error = FUNC8(sc, 4);
	if (error)
		goto fail;

	for (i = 0; i < FUNC0(urtw_8225_rf_part3); i++) {
		FUNC4(sc, urtw_8225_rf_part3[i].reg,
		    urtw_8225_rf_part3[i].val);
		FUNC16(&sc->sc_mtx, 1);
	}

	FUNC15(sc, URTW_TESTR, 0x0d);

	error = FUNC7(sc, 1);
	if (error)
		goto fail;

	FUNC4(sc, 0x10, 0x9b);
	FUNC16(&sc->sc_mtx, 1);
	FUNC5(sc, 0x26, 0x90);
	FUNC16(&sc->sc_mtx, 1);

	/* TX ant A, 0x0 for B */
	error = FUNC3(sc, 0x3);
	if (error)
		goto fail;
	FUNC14(sc, URTW_HSSI_PARA, 0x3dc00002);

	error = FUNC6(sc, 1);
fail:
	return (error);
}