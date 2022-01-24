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
typedef  scalar_t__ usb_error_t ;
typedef  int uint8_t ;
struct urtw_softc {scalar_t__ (* sc_rf_init ) (struct urtw_softc*) ;} ;

/* Variables and functions */
 int URTW_8187B_8225_ANAPARAM2_ON ; 
 int URTW_8187B_8225_ANAPARAM3_ON ; 
 int URTW_8187B_8225_ANAPARAM_ON ; 
 int /*<<< orphan*/  URTW_ANAPARAM ; 
 int /*<<< orphan*/  URTW_ANAPARAM2 ; 
 int URTW_ANAPARAM3 ; 
 int URTW_CMD ; 
 int URTW_CMD_RX_ENABLE ; 
 int URTW_CMD_TX_ENABLE ; 
 int URTW_CONFIG3 ; 
 int URTW_CONFIG3_ANAPARAM_WRITE ; 
 int URTW_CONFIG3_GNT_SELECT ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_CONFIG ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_NORMAL ; 
 int /*<<< orphan*/  URTW_HSSI_PARA ; 
 scalar_t__ FUNC0 (struct urtw_softc*) ; 
 scalar_t__ FUNC1 (struct urtw_softc*) ; 
 scalar_t__ FUNC2 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct urtw_softc*,int,int*) ; 
 scalar_t__ FUNC4 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urtw_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct urtw_softc*,int,int) ; 
 scalar_t__ FUNC8 (struct urtw_softc*,int,int) ; 

__attribute__((used)) static usb_error_t
FUNC9(struct urtw_softc *sc)
{
	uint8_t data8;
	usb_error_t error;

	error = FUNC4(sc, URTW_EPROM_CMD_CONFIG);
	if (error)
		goto fail;

	FUNC3(sc, URTW_CONFIG3, &data8);
	FUNC7(sc, URTW_CONFIG3,
	    data8 | URTW_CONFIG3_ANAPARAM_WRITE | URTW_CONFIG3_GNT_SELECT);
	FUNC6(sc, URTW_ANAPARAM2, URTW_8187B_8225_ANAPARAM2_ON);
	FUNC6(sc, URTW_ANAPARAM, URTW_8187B_8225_ANAPARAM_ON);
	FUNC7(sc, URTW_ANAPARAM3, URTW_8187B_8225_ANAPARAM3_ON);

	FUNC7(sc, 0x61, 0x10);
	FUNC3(sc, 0x62, &data8);
	FUNC7(sc, 0x62, data8 & ~(1 << 5));
	FUNC7(sc, 0x62, data8 | (1 << 5));

	FUNC3(sc, URTW_CONFIG3, &data8);
	data8 &= ~URTW_CONFIG3_ANAPARAM_WRITE;
	FUNC7(sc, URTW_CONFIG3, data8);

	error = FUNC4(sc, URTW_EPROM_CMD_NORMAL);
	if (error)
		goto fail;

	error = FUNC1(sc);
	if (error)
		goto fail;

	error = sc->sc_rf_init(sc);
	if (error != 0)
		goto fail;
	FUNC7(sc, URTW_CMD, URTW_CMD_RX_ENABLE | URTW_CMD_TX_ENABLE);

	/* fix RTL8187B RX stall */
	error = FUNC2(sc);
	if (error)
		goto fail;

	error = FUNC8(sc, 0x41, 0xf4);
	if (error)
		goto fail;
	error = FUNC8(sc, 0x40, 0x00);
	if (error)
		goto fail;
	error = FUNC8(sc, 0x42, 0x00);
	if (error)
		goto fail;
	error = FUNC8(sc, 0x42, 0x01);
	if (error)
		goto fail;
	error = FUNC8(sc, 0x40, 0x0f);
	if (error)
		goto fail;
	error = FUNC8(sc, 0x42, 0x00);
	if (error)
		goto fail;
	error = FUNC8(sc, 0x42, 0x01);
	if (error)
		goto fail;

	FUNC3(sc, 0xdb, &data8);
	FUNC7(sc, 0xdb, data8 | (1 << 2));
	FUNC5(sc, 0x372, 0x59fa);
	FUNC5(sc, 0x374, 0x59d2);
	FUNC5(sc, 0x376, 0x59d2);
	FUNC5(sc, 0x378, 0x19fa);
	FUNC5(sc, 0x37a, 0x19fa);
	FUNC5(sc, 0x37c, 0x00d0);
	FUNC7(sc, 0x61, 0);

	FUNC7(sc, 0x180, 0x0f);
	FUNC7(sc, 0x183, 0x03);
	FUNC7(sc, 0xda, 0x10);
	FUNC7(sc, 0x24d, 0x08);
	FUNC6(sc, URTW_HSSI_PARA, 0x0600321b);

	FUNC5(sc, 0x1ec, 0x800);	/* RX MAX SIZE */
fail:
	return (error);
}