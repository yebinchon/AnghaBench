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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct elink_phy {int addr; } ;
struct bxe_softc {int dummy; } ;
typedef  int int8_t ;
typedef  scalar_t__ elink_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,char*,int) ; 
 int ELINK_NIG_MASK_MI_INT ; 
 int ELINK_NIG_MASK_SERDES0_LINK_STATUS ; 
 int ELINK_NIG_MASK_XGXS0_LINK10G ; 
 int ELINK_NIG_MASK_XGXS0_LINK_STATUS ; 
 scalar_t__ ELINK_STATUS_ERROR ; 
 scalar_t__ ELINK_STATUS_OK ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_REG_TX_DISABLE ; 
 int MISC_REGISTERS_GPIO_1 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_OUTPUT_HIGH ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_OUTPUT_LOW ; 
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ; 
 int /*<<< orphan*/  NIG_REG_PORT_SWAP ; 
 int /*<<< orphan*/  NIG_REG_STRAP_OVERRIDE ; 
 int PORT_0 ; 
 size_t PORT_1 ; 
 int PORT_MAX ; 
 scalar_t__ FUNC4 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct bxe_softc*,struct elink_phy*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct bxe_softc*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,struct elink_phy*) ; 

__attribute__((used)) static elink_status_t FUNC11(struct bxe_softc *sc,
				      uint32_t shmem_base_path[],
				      uint32_t shmem2_base_path[], uint8_t phy_index,
				      uint32_t chip_id)
{
	int8_t port, reset_gpio;
	uint32_t swap_val, swap_override;
	struct elink_phy phy[PORT_MAX];
	struct elink_phy *phy_blk[PORT_MAX];
	int8_t port_of_path;
	swap_val = FUNC4(sc, NIG_REG_PORT_SWAP);
	swap_override = FUNC4(sc, NIG_REG_STRAP_OVERRIDE);

	reset_gpio = MISC_REGISTERS_GPIO_1;
	port = 1;

	/* Retrieve the reset gpio/port which control the reset.
	 * Default is GPIO1, PORT1
	 */
	FUNC9(sc, shmem_base_path[0],
				     (uint8_t *)&reset_gpio, (uint8_t *)&port);

	/* Calculate the port based on port swap */
	port ^= (swap_val && swap_override);

	/* Initiate PHY reset*/
	FUNC7(sc, reset_gpio, MISC_REGISTERS_GPIO_OUTPUT_LOW,
		       port);
	FUNC1(1000 * 1);
	FUNC7(sc, reset_gpio, MISC_REGISTERS_GPIO_OUTPUT_HIGH,
		       port);

	FUNC1(1000 * 5);

	/* PART1 - Reset both phys */
	for (port = PORT_MAX - 1; port >= PORT_0; port--) {
		uint32_t shmem_base, shmem2_base;

		/* In E2, same phy is using for port0 of the two paths */
		if (FUNC0(sc)) {
			shmem_base = shmem_base_path[0];
			shmem2_base = shmem2_base_path[0];
			port_of_path = port;
		} else {
			shmem_base = shmem_base_path[port];
			shmem2_base = shmem2_base_path[port];
			port_of_path = 0;
		}

		/* Extract the ext phy address for the port */
		if (FUNC10(sc, phy_index, shmem_base, shmem2_base,
				       port_of_path, &phy[port]) !=
				       ELINK_STATUS_OK) {
			FUNC2(sc, "populate phy failed\n");
			return ELINK_STATUS_ERROR;
		}
		/* disable attentions */
		FUNC6(sc, NIG_REG_MASK_INTERRUPT_PORT0 +
			       port_of_path*4,
			       (ELINK_NIG_MASK_XGXS0_LINK_STATUS |
				ELINK_NIG_MASK_XGXS0_LINK10G |
				ELINK_NIG_MASK_SERDES0_LINK_STATUS |
				ELINK_NIG_MASK_MI_INT));


		/* Reset the phy */
		FUNC8(sc, &phy[port],
				 MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 1<<15);
	}

	/* Add delay of 150ms after reset */
	FUNC1(1000 * 150);
	if (phy[PORT_0].addr & 0x1) {
		phy_blk[PORT_0] = &(phy[PORT_1]);
		phy_blk[PORT_1] = &(phy[PORT_0]);
	} else {
		phy_blk[PORT_0] = &(phy[PORT_0]);
		phy_blk[PORT_1] = &(phy[PORT_1]);
	}
	/* PART2 - Download firmware to both phys */
	for (port = PORT_MAX - 1; port >= PORT_0; port--) {
		if (FUNC0(sc))
			port_of_path = port;
		else
			port_of_path = 0;
		FUNC3(sc, "Loading spirom for phy address 0x%x\n",
			   phy_blk[port]->addr);
		if (FUNC5(sc, phy_blk[port],
						      port_of_path))
			return ELINK_STATUS_ERROR;
		/* Disable PHY transmitter output */
		FUNC8(sc, phy_blk[port],
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_TX_DISABLE, 1);

	}
	return ELINK_STATUS_OK;
}