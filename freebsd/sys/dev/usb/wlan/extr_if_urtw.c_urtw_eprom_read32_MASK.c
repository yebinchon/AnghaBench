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
typedef  int uint32_t ;
struct urtw_softc {scalar_t__ sc_epromtype; } ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ URTW_EEPROM_93C56 ; 
 int /*<<< orphan*/  URTW_EPROM_CMD ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_NORMAL_MODE ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_PROGRAM_MODE ; 
 int /*<<< orphan*/  URTW_EPROM_DELAY ; 
 int /*<<< orphan*/  URTW_EPROM_DISABLE ; 
 int /*<<< orphan*/  URTW_EPROM_ENABLE ; 
 int URTW_READCMD_LEN ; 
 scalar_t__ FUNC1 (struct urtw_softc*) ; 
 scalar_t__ FUNC2 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct urtw_softc*,int*) ; 
 scalar_t__ FUNC4 (struct urtw_softc*,int*,int) ; 
 scalar_t__ FUNC5 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urtw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static usb_error_t
FUNC7(struct urtw_softc *sc, uint32_t addr, uint32_t *data)
{
#define URTW_READCMD_LEN		3
	int addrlen, i;
	int16_t addrstr[8], data16, readcmd[] = { 1, 1, 0 };
	usb_error_t error;

	/* NB: make sure the buffer is initialized  */
	*data = 0;

	/* enable EPROM programming */
	FUNC6(sc, URTW_EPROM_CMD, URTW_EPROM_CMD_PROGRAM_MODE);
	FUNC0(URTW_EPROM_DELAY);

	error = FUNC2(sc, URTW_EPROM_ENABLE);
	if (error != 0)
		goto fail;
	error = FUNC1(sc);
	if (error != 0)
		goto fail;
	error = FUNC4(sc, readcmd, URTW_READCMD_LEN);
	if (error != 0)
		goto fail;
	if (sc->sc_epromtype == URTW_EEPROM_93C56) {
		addrlen = 8;
		addrstr[0] = addr & (1 << 7);
		addrstr[1] = addr & (1 << 6);
		addrstr[2] = addr & (1 << 5);
		addrstr[3] = addr & (1 << 4);
		addrstr[4] = addr & (1 << 3);
		addrstr[5] = addr & (1 << 2);
		addrstr[6] = addr & (1 << 1);
		addrstr[7] = addr & (1 << 0);
	} else {
		addrlen=6;
		addrstr[0] = addr & (1 << 5);
		addrstr[1] = addr & (1 << 4);
		addrstr[2] = addr & (1 << 3);
		addrstr[3] = addr & (1 << 2);
		addrstr[4] = addr & (1 << 1);
		addrstr[5] = addr & (1 << 0);
	}
	error = FUNC4(sc, addrstr, addrlen);
	if (error != 0)
		goto fail;

	error = FUNC5(sc, 0);
	if (error != 0)
		goto fail;

	for (i = 0; i < 16; i++) {
		error = FUNC1(sc);
		if (error != 0)
			goto fail;
		error = FUNC3(sc, &data16);
		if (error != 0)
			goto fail;

		(*data) |= (data16 << (15 - i));
	}

	error = FUNC2(sc, URTW_EPROM_DISABLE);
	if (error != 0)
		goto fail;
	error = FUNC1(sc);
	if (error != 0)
		goto fail;

	/* now disable EPROM programming */
	FUNC6(sc, URTW_EPROM_CMD, URTW_EPROM_CMD_NORMAL_MODE);
fail:
	return (error);
#undef URTW_READCMD_LEN
}