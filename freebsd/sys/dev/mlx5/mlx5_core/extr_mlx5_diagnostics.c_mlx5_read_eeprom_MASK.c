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
struct mlx5_eeprom {int /*<<< orphan*/  data; scalar_t__ len; scalar_t__ page_valid; int /*<<< orphan*/  page_num; scalar_t__ device_addr; int /*<<< orphan*/  i2c_addr; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_EEPROM_LOW_PAGE ; 
 scalar_t__ MLX5_EEPROM_PAGE_LENGTH ; 
 int /*<<< orphan*/  MLX5_I2C_ADDR_LOW ; 
 int /*<<< orphan*/  M_MLX5_EEPROM ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*) ; 
 int FUNC3 (struct mlx5_core_dev*,struct mlx5_eeprom*) ; 
 int FUNC4 (struct mlx5_core_dev*,struct mlx5_eeprom*) ; 

int
FUNC5(struct mlx5_core_dev *dev, struct mlx5_eeprom *eeprom)
{
	int error;

	eeprom->i2c_addr = MLX5_I2C_ADDR_LOW;
	eeprom->device_addr = 0;
	eeprom->page_num = MLX5_EEPROM_LOW_PAGE;
	eeprom->page_valid = 0;

	/* Read three first bytes to get important info */
	error = FUNC4(dev, eeprom);
	if (error) {
		FUNC2(dev,
		    "Failed reading EEPROM initial information\n");
		return (error);
	}
	/*
	 * Allocate needed length buffer and additional space for
	 * page 0x03
	 */
	eeprom->data = FUNC1(eeprom->len + MLX5_EEPROM_PAGE_LENGTH,
	    M_MLX5_EEPROM, M_WAITOK | M_ZERO);

	/* Read the whole eeprom information */
	error = FUNC3(dev, eeprom);
	if (error) {
		FUNC2(dev, "Failed reading EEPROM\n");
		error = 0;
		/*
		 * Continue printing partial information in case of
		 * an error
		 */
	}
	FUNC0(eeprom->data, M_MLX5_EEPROM);

	return (error);
}