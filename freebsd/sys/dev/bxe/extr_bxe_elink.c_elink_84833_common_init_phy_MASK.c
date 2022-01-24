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
typedef  int /*<<< orphan*/  uint32_t ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ELINK_STATUS_OK ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_OUTPUT_HIGH ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_OUTPUT_LOW ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static elink_status_t FUNC4(struct bxe_softc *sc,
						uint32_t shmem_base_path[],
						uint32_t shmem2_base_path[],
						uint8_t phy_index,
						uint32_t chip_id)
{
	uint8_t reset_gpios;
	reset_gpios = FUNC2(sc, shmem_base_path, chip_id);
	FUNC3(sc, reset_gpios, MISC_REGISTERS_GPIO_OUTPUT_LOW);
	FUNC0(10);
	FUNC3(sc, reset_gpios, MISC_REGISTERS_GPIO_OUTPUT_HIGH);
	FUNC1(sc, "84833 reset pulse on pin values 0x%x\n",
		reset_gpios);
	return ELINK_STATUS_OK;
}