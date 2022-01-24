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
typedef  scalar_t__ uint16_t ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,scalar_t__) ; 
 scalar_t__ ELINK_EDC_MODE_LIMITING ; 
 int /*<<< orphan*/  ELINK_STATUS_OK ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_LRM_MODE ; 
 int /*<<< orphan*/  MDIO_PMA_REG_MISC_CTRL0 ; 
 int /*<<< orphan*/  MDIO_PMA_REG_ROM_VER2 ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static elink_status_t FUNC4(struct bxe_softc *sc,
					struct elink_phy *phy,
					uint16_t edc_mode)
{
	uint16_t cur_limiting_mode;

	FUNC2(sc, phy,
			MDIO_PMA_DEVAD,
			MDIO_PMA_REG_ROM_VER2,
			&cur_limiting_mode);
	FUNC1(sc, "Current Limiting mode is 0x%x\n",
		 cur_limiting_mode);

	if (edc_mode == ELINK_EDC_MODE_LIMITING) {
		FUNC0(sc, "Setting LIMITING MODE\n");
		FUNC3(sc, phy,
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_ROM_VER2,
				 ELINK_EDC_MODE_LIMITING);
	} else { /* LRM mode ( default )*/

		FUNC0(sc, "Setting LRM MODE\n");

		/* Changing to LRM mode takes quite few seconds. So do it only
		 * if current mode is limiting (default is LRM)
		 */
		if (cur_limiting_mode != ELINK_EDC_MODE_LIMITING)
			return ELINK_STATUS_OK;

		FUNC3(sc, phy,
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_LRM_MODE,
				 0);
		FUNC3(sc, phy,
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_ROM_VER2,
				 0x128);
		FUNC3(sc, phy,
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_MISC_CTRL0,
				 0x4008);
		FUNC3(sc, phy,
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_LRM_MODE,
				 0xaaaa);
	}
	return ELINK_STATUS_OK;
}