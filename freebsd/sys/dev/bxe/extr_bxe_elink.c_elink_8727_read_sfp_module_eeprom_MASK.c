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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*,int) ; 
 int ELINK_SFP_EEPROM_PAGE_SIZE ; 
 int /*<<< orphan*/  ELINK_STATUS_ERROR ; 
 int /*<<< orphan*/  ELINK_STATUS_OK ; 
 int /*<<< orphan*/  ELINK_STATUS_TIMEOUT ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int MDIO_PMA_REG_8727_TWO_WIRE_DATA_BUF ; 
 int MDIO_PMA_REG_8727_TWO_WIRE_DATA_MASK ; 
 int MDIO_PMA_REG_8727_TWO_WIRE_SLAVE_ADDR ; 
 int MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT ; 
 int MDIO_PMA_REG_SFP_TWO_WIRE_CTRL ; 
 int MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK ; 
 int MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR ; 
 int MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE ; 
 int MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static elink_status_t FUNC5(struct elink_phy *phy,
					     struct elink_params *params,
					     uint8_t dev_addr, uint16_t addr, uint8_t byte_cnt,
					     uint8_t *o_buf, uint8_t is_init)
{
	struct bxe_softc *sc = params->sc;
	uint16_t val, i;

	if (byte_cnt > ELINK_SFP_EEPROM_PAGE_SIZE) {
		FUNC1(sc,
		   "Reading from eeprom is limited to 0xf\n");
		return ELINK_STATUS_ERROR;
	}

	/* Set 2-wire transfer rate of SFP+ module EEPROM
	 * to 100Khz since some DACs(direct attached cables) do
	 * not work at 400Khz.
	 */
	FUNC4(sc, phy,
			 MDIO_PMA_DEVAD,
			 MDIO_PMA_REG_8727_TWO_WIRE_SLAVE_ADDR,
			 ((dev_addr << 8) | 1));

	/* Need to read from 1.8000 to clear it */
	FUNC3(sc, phy,
			MDIO_PMA_DEVAD,
			MDIO_PMA_REG_SFP_TWO_WIRE_CTRL,
			&val);

	/* Set the read command byte count */
	FUNC4(sc, phy,
			 MDIO_PMA_DEVAD,
			 MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT,
			 ((byte_cnt < 2) ? 2 : byte_cnt));

	/* Set the read command address */
	FUNC4(sc, phy,
			 MDIO_PMA_DEVAD,
			 MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR,
			 addr);
	/* Set the destination address */
	FUNC4(sc, phy,
			 MDIO_PMA_DEVAD,
			 0x8004,
			 MDIO_PMA_REG_8727_TWO_WIRE_DATA_BUF);

	/* Activate read command */
	FUNC4(sc, phy,
			 MDIO_PMA_DEVAD,
			 MDIO_PMA_REG_SFP_TWO_WIRE_CTRL,
			 0x8002);
	/* Wait appropriate time for two-wire command to finish before
	 * polling the status register
	 */
	FUNC0(1000 * 1);

	/* Wait up to 500us for command complete status */
	for (i = 0; i < 100; i++) {
		FUNC3(sc, phy,
				MDIO_PMA_DEVAD,
				MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, &val);
		if ((val & MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK) ==
		    MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE)
			break;
		FUNC0(5);
	}

	if ((val & MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK) !=
		    MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE) {
		FUNC2(sc,
			 "Got bad status 0x%x when reading from SFP+ EEPROM\n",
			 (val & MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK));
		return ELINK_STATUS_TIMEOUT;
	}

	/* Read the buffer */
	for (i = 0; i < byte_cnt; i++) {
		FUNC3(sc, phy,
				MDIO_PMA_DEVAD,
				MDIO_PMA_REG_8727_TWO_WIRE_DATA_BUF + i, &val);
		o_buf[i] = (uint8_t)(val & MDIO_PMA_REG_8727_TWO_WIRE_DATA_MASK);
	}

	for (i = 0; i < 100; i++) {
		FUNC3(sc, phy,
				MDIO_PMA_DEVAD,
				MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, &val);
		if ((val & MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK) ==
		    MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE)
			return ELINK_STATUS_OK;
		FUNC0(1000 * 1);
	}

	return ELINK_STATUS_ERROR;
}