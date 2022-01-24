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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct urtw_softc {int dummy; } ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int URTW_BB_HOST_BANG_CLK ; 
 int URTW_BB_HOST_BANG_EN ; 
 int URTW_BB_HOST_BANG_RW ; 
 int /*<<< orphan*/  URTW_RF_PINS_ENABLE ; 
 int /*<<< orphan*/  URTW_RF_PINS_INPUT ; 
 int URTW_RF_PINS_MAGIC4 ; 
 int /*<<< orphan*/  URTW_RF_PINS_OUTPUT ; 
 int URTW_RF_PINS_OUTPUT_MAGIC1 ; 
 int /*<<< orphan*/  URTW_RF_PINS_SELECT ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static usb_error_t
FUNC3(struct urtw_softc *sc, uint8_t addr, uint32_t *data)
{
	int i;
	int16_t bit;
	uint8_t rlen = 12, wlen = 6;
	uint16_t o1, o2, o3, tmp;
	uint32_t d2w = ((uint32_t)(addr & 0x1f)) << 27;
	uint32_t mask = 0x80000000, value = 0;
	usb_error_t error;

	FUNC1(sc, URTW_RF_PINS_OUTPUT, &o1);
	FUNC1(sc, URTW_RF_PINS_ENABLE, &o2);
	FUNC1(sc, URTW_RF_PINS_SELECT, &o3);
	FUNC2(sc, URTW_RF_PINS_ENABLE, o2 | URTW_RF_PINS_MAGIC4);
	FUNC2(sc, URTW_RF_PINS_SELECT, o3 | URTW_RF_PINS_MAGIC4);
	o1 &= ~URTW_RF_PINS_MAGIC4;
	FUNC2(sc, URTW_RF_PINS_OUTPUT, o1 | URTW_BB_HOST_BANG_EN);
	FUNC0(5);
	FUNC2(sc, URTW_RF_PINS_OUTPUT, o1);
	FUNC0(5);

	for (i = 0; i < (wlen / 2); i++, mask = mask >> 1) {
		bit = ((d2w & mask) != 0) ? 1 : 0;

		FUNC2(sc, URTW_RF_PINS_OUTPUT, bit | o1);
		FUNC0(2);
		FUNC2(sc, URTW_RF_PINS_OUTPUT, bit | o1 |
		    URTW_BB_HOST_BANG_CLK);
		FUNC0(2);
		FUNC2(sc, URTW_RF_PINS_OUTPUT, bit | o1 |
		    URTW_BB_HOST_BANG_CLK);
		FUNC0(2);
		mask = mask >> 1;
		if (i == 2)
			break;
		bit = ((d2w & mask) != 0) ? 1 : 0;
		FUNC2(sc, URTW_RF_PINS_OUTPUT, bit | o1 |
		    URTW_BB_HOST_BANG_CLK);
		FUNC0(2);
		FUNC2(sc, URTW_RF_PINS_OUTPUT, bit | o1 |
		    URTW_BB_HOST_BANG_CLK);
		FUNC0(2);
		FUNC2(sc, URTW_RF_PINS_OUTPUT, bit | o1);
		FUNC0(1);
	}
	FUNC2(sc, URTW_RF_PINS_OUTPUT, bit | o1 | URTW_BB_HOST_BANG_RW |
	    URTW_BB_HOST_BANG_CLK);
	FUNC0(2);
	FUNC2(sc, URTW_RF_PINS_OUTPUT, bit | o1 | URTW_BB_HOST_BANG_RW);
	FUNC0(2);
	FUNC2(sc, URTW_RF_PINS_OUTPUT, o1 | URTW_BB_HOST_BANG_RW);
	FUNC0(2);

	mask = 0x800;
	for (i = 0; i < rlen; i++, mask = mask >> 1) {
		FUNC2(sc, URTW_RF_PINS_OUTPUT,
		    o1 | URTW_BB_HOST_BANG_RW);
		FUNC0(2);
		FUNC2(sc, URTW_RF_PINS_OUTPUT,
		    o1 | URTW_BB_HOST_BANG_RW | URTW_BB_HOST_BANG_CLK);
		FUNC0(2);
		FUNC2(sc, URTW_RF_PINS_OUTPUT,
		    o1 | URTW_BB_HOST_BANG_RW | URTW_BB_HOST_BANG_CLK);
		FUNC0(2);
		FUNC2(sc, URTW_RF_PINS_OUTPUT,
		    o1 | URTW_BB_HOST_BANG_RW | URTW_BB_HOST_BANG_CLK);
		FUNC0(2);

		FUNC1(sc, URTW_RF_PINS_INPUT, &tmp);
		value |= ((tmp & URTW_BB_HOST_BANG_CLK) ? mask : 0);
		FUNC2(sc, URTW_RF_PINS_OUTPUT,
		    o1 | URTW_BB_HOST_BANG_RW);
		FUNC0(2);
	}

	FUNC2(sc, URTW_RF_PINS_OUTPUT, o1 | URTW_BB_HOST_BANG_EN |
	    URTW_BB_HOST_BANG_RW);
	FUNC0(2);

	FUNC2(sc, URTW_RF_PINS_ENABLE, o2);
	FUNC2(sc, URTW_RF_PINS_SELECT, o3);
	FUNC2(sc, URTW_RF_PINS_OUTPUT, URTW_RF_PINS_OUTPUT_MAGIC1);

	if (data != NULL)
		*data = value;
fail:
	return (error);
}