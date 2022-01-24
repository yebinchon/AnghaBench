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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct elink_phy {int flags; int addr; scalar_t__ mdio_ctrl; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int ELINK_FLAGS_DUMMY_READ ; 
 int ELINK_FLAGS_MDC_MDIO_WA ; 
 int ELINK_FLAGS_MDC_MDIO_WA_B0 ; 
 int ELINK_FLAGS_MDC_MDIO_WA_G ; 
 int /*<<< orphan*/  ELINK_LOG_ID_MDIO_ACCESS_TIMEOUT ; 
 int /*<<< orphan*/  ELINK_STATUS_OK ; 
 int /*<<< orphan*/  ELINK_STATUS_TIMEOUT ; 
 int EMAC_MDIO_COMM_COMMAND_ADDRESS ; 
 int EMAC_MDIO_COMM_COMMAND_READ_45 ; 
 int EMAC_MDIO_COMM_DATA ; 
 int EMAC_MDIO_COMM_START_BUSY ; 
 int /*<<< orphan*/  EMAC_MDIO_STATUS_10MB ; 
 scalar_t__ EMAC_REG_EMAC_MDIO_COMM ; 
 scalar_t__ EMAC_REG_EMAC_MDIO_STATUS ; 
 scalar_t__ MISC_REG_CHIP_NUM ; 
 scalar_t__ MISC_REG_CHIP_REV ; 
 int FUNC2 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,int,scalar_t__) ; 

__attribute__((used)) static elink_status_t FUNC8(struct bxe_softc *sc, struct elink_phy *phy,
			   uint8_t devad, uint16_t reg, uint16_t *ret_val)
{
	uint32_t val;
	uint16_t i;
	elink_status_t rc = ELINK_STATUS_OK;
	uint32_t chip_id;
	if (phy->flags & ELINK_FLAGS_MDC_MDIO_WA_G) {
		chip_id = (FUNC2(sc, MISC_REG_CHIP_NUM) << 16) |
			  ((FUNC2(sc, MISC_REG_CHIP_REV) & 0xf) << 12);
		FUNC7(sc, chip_id, phy->mdio_ctrl);
	}

	if (phy->flags & ELINK_FLAGS_MDC_MDIO_WA_B0)
		FUNC5(sc, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_STATUS,
			      EMAC_MDIO_STATUS_10MB);
	/* Address */
	val = ((phy->addr << 21) | (devad << 16) | reg |
	       EMAC_MDIO_COMM_COMMAND_ADDRESS |
	       EMAC_MDIO_COMM_START_BUSY);
	FUNC3(sc, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_COMM, val);

	for (i = 0; i < 50; i++) {
		FUNC0(10);

		val = FUNC2(sc, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_COMM);
		if (!(val & EMAC_MDIO_COMM_START_BUSY)) {
			FUNC0(5);
			break;
		}
	}
	if (val & EMAC_MDIO_COMM_START_BUSY) {
		FUNC1(sc, "read phy register failed\n");
		FUNC6(sc, ELINK_LOG_ID_MDIO_ACCESS_TIMEOUT); // "MDC/MDIO access timeout\n"

		*ret_val = 0;
		rc = ELINK_STATUS_TIMEOUT;
	} else {
		/* Data */
		val = ((phy->addr << 21) | (devad << 16) |
		       EMAC_MDIO_COMM_COMMAND_READ_45 |
		       EMAC_MDIO_COMM_START_BUSY);
		FUNC3(sc, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_COMM, val);

		for (i = 0; i < 50; i++) {
			FUNC0(10);

			val = FUNC2(sc, phy->mdio_ctrl +
				     EMAC_REG_EMAC_MDIO_COMM);
			if (!(val & EMAC_MDIO_COMM_START_BUSY)) {
				*ret_val = (uint16_t)(val & EMAC_MDIO_COMM_DATA);
				break;
			}
		}
		if (val & EMAC_MDIO_COMM_START_BUSY) {
			FUNC1(sc, "read phy register failed\n");
			FUNC6(sc, ELINK_LOG_ID_MDIO_ACCESS_TIMEOUT); // "MDC/MDIO access timeout\n"

			*ret_val = 0;
			rc = ELINK_STATUS_TIMEOUT;
		}
	}
	/* Work around for E3 A0 */
	if (phy->flags & ELINK_FLAGS_MDC_MDIO_WA) {
		phy->flags ^= ELINK_FLAGS_DUMMY_READ;
		if (phy->flags & ELINK_FLAGS_DUMMY_READ) {
			uint16_t temp_val;
			FUNC8(sc, phy, devad, 0xf, &temp_val);
		}
	}

	if (phy->flags & ELINK_FLAGS_MDC_MDIO_WA_B0)
		FUNC4(sc, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_STATUS,
			       EMAC_MDIO_STATUS_10MB);
	return rc;
}