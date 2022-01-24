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
typedef  scalar_t__ uint32_t ;
struct urtw_softc {int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  URTW_8225_ADDR_0_DATA_MAGIC1 ; 
 int /*<<< orphan*/  URTW_8225_ADDR_0_DATA_MAGIC2 ; 
 int /*<<< orphan*/  URTW_8225_ADDR_0_MAGIC ; 
 scalar_t__ URTW_8225_ADDR_8_DATA_MAGIC1 ; 
 int /*<<< orphan*/  URTW_8225_ADDR_8_MAGIC ; 
 scalar_t__ URTW_8225_ADDR_9_DATA_MAGIC1 ; 
 int /*<<< orphan*/  URTW_8225_ADDR_9_MAGIC ; 
 int /*<<< orphan*/  URTW_RF_PINS_ENABLE ; 
 int /*<<< orphan*/  URTW_RF_PINS_MAGIC5 ; 
 int /*<<< orphan*/  URTW_RF_PINS_OUTPUT ; 
 int /*<<< orphan*/  URTW_RF_PINS_SELECT ; 
 scalar_t__ FUNC0 (struct urtw_softc*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static usb_error_t
FUNC4(struct urtw_softc *sc, int *ret)
{
	uint32_t data;
	usb_error_t error;

	*ret = 1;

	FUNC2(sc, URTW_RF_PINS_OUTPUT, URTW_RF_PINS_MAGIC5);
	FUNC2(sc, URTW_RF_PINS_SELECT, URTW_RF_PINS_MAGIC5);
	FUNC2(sc, URTW_RF_PINS_ENABLE, URTW_RF_PINS_MAGIC5);
	FUNC3(&sc->sc_mtx, 500);

	FUNC1(sc, URTW_8225_ADDR_0_MAGIC,
	    URTW_8225_ADDR_0_DATA_MAGIC1);

	error = FUNC0(sc, URTW_8225_ADDR_8_MAGIC, &data);
	if (error != 0)
		goto fail;
	if (data != URTW_8225_ADDR_8_DATA_MAGIC1)
		*ret = 0;
	else {
		error = FUNC0(sc, URTW_8225_ADDR_9_MAGIC, &data);
		if (error != 0)
			goto fail;
		if (data != URTW_8225_ADDR_9_DATA_MAGIC1)
			*ret = 0;
	}

	FUNC1(sc, URTW_8225_ADDR_0_MAGIC,
	    URTW_8225_ADDR_0_DATA_MAGIC2);
fail:
	return (error);
}