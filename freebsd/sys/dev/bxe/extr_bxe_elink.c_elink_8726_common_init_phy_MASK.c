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
typedef  int uint32_t ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;
typedef  size_t int8_t ;
typedef  scalar_t__ elink_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*) ; 
 scalar_t__ ELINK_STATUS_ERROR ; 
 scalar_t__ ELINK_STATUS_OK ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_GEN_CTRL ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_0 ; 
 int MISC_REGISTERS_GPIO_3 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_HIGH ; 
 int MISC_REGISTERS_GPIO_PORT_SHIFT ; 
 int /*<<< orphan*/  MISC_REG_GPIO_EVENT_EN ; 
 size_t PORT_MAX ; 
 int FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct bxe_softc*,int /*<<< orphan*/ ,int,int,size_t,struct elink_phy*) ; 

__attribute__((used)) static elink_status_t FUNC9(struct bxe_softc *sc,
				      uint32_t shmem_base_path[],
				      uint32_t shmem2_base_path[], uint8_t phy_index,
				      uint32_t chip_id)
{
	uint32_t val;
	int8_t port;
	struct elink_phy phy;
	/* Use port1 because of the static port-swap */
	/* Enable the module detection interrupt */
	val = FUNC3(sc, MISC_REG_GPIO_EVENT_EN);
	val |= ((1<<MISC_REGISTERS_GPIO_3)|
		(1<<(MISC_REGISTERS_GPIO_3 + MISC_REGISTERS_GPIO_PORT_SHIFT)));
	FUNC4(sc, MISC_REG_GPIO_EVENT_EN, val);

	FUNC7(sc, 0);
	FUNC1(1000 * 5);
	for (port = 0; port < PORT_MAX; port++) {
		uint32_t shmem_base, shmem2_base;

		/* In E2, same phy is using for port0 of the two paths */
		if (FUNC0(sc)) {
			shmem_base = shmem_base_path[0];
			shmem2_base = shmem2_base_path[0];
		} else {
			shmem_base = shmem_base_path[port];
			shmem2_base = shmem2_base_path[port];
		}
		/* Extract the ext phy address for the port */
		if (FUNC8(sc, phy_index, shmem_base, shmem2_base,
				       port, &phy) !=
		    ELINK_STATUS_OK) {
			FUNC2(sc, "populate phy failed\n");
			return ELINK_STATUS_ERROR;
		}

		/* Reset phy*/
		FUNC6(sc, &phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_REG_GEN_CTRL, 0x0001);


		/* Set fault module detected LED on */
		FUNC5(sc, MISC_REGISTERS_GPIO_0,
			       MISC_REGISTERS_GPIO_HIGH,
			       port);
	}

	return ELINK_STATUS_OK;
}