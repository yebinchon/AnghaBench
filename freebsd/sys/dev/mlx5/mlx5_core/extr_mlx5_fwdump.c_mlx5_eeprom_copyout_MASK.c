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
struct mlx5_eeprom_get {int /*<<< orphan*/ * eeprom_info_buf; scalar_t__ eeprom_info_out_len; scalar_t__ eeprom_info_page_valid; } ;
struct mlx5_eeprom {int /*<<< orphan*/  data; scalar_t__ len; scalar_t__ page_valid; int /*<<< orphan*/  page_num; scalar_t__ device_addr; int /*<<< orphan*/  i2c_addr; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_EEPROM_LOW_PAGE ; 
 scalar_t__ MLX5_EEPROM_PAGE_LENGTH ; 
 int /*<<< orphan*/  MLX5_I2C_ADDR_LOW ; 
 int /*<<< orphan*/  M_MLX5_EEPROM ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,...) ; 
 int FUNC4 (struct mlx5_core_dev*,struct mlx5_eeprom*) ; 
 int FUNC5 (struct mlx5_core_dev*,struct mlx5_eeprom*) ; 

__attribute__((used)) static int
FUNC6(struct mlx5_core_dev *dev, struct mlx5_eeprom_get *eeprom_info)
{
	struct mlx5_eeprom eeprom;
	int error;

	eeprom.i2c_addr = MLX5_I2C_ADDR_LOW;
	eeprom.device_addr = 0;
	eeprom.page_num = MLX5_EEPROM_LOW_PAGE;
	eeprom.page_valid = 0;

	/* Read three first bytes to get important info */
	error = FUNC5(dev, &eeprom);
	if (error != 0) {
		FUNC3(dev,
		    "Failed reading EEPROM initial information\n");
		return (error);
	}
	eeprom_info->eeprom_info_page_valid = eeprom.page_valid;
	eeprom_info->eeprom_info_out_len = eeprom.len;

	if (eeprom_info->eeprom_info_buf == NULL)
		return (0);
	/*
	 * Allocate needed length buffer and additional space for
	 * page 0x03
	 */
	eeprom.data = FUNC2(eeprom.len + MLX5_EEPROM_PAGE_LENGTH,
	    M_MLX5_EEPROM, M_WAITOK | M_ZERO);

	/* Read the whole eeprom information */
	error = FUNC4(dev, &eeprom);
	if (error != 0) {
		FUNC3(dev, "Failed reading EEPROM error = %d\n",
		    error);
		error = 0;
		/*
		 * Continue printing partial information in case of
		 * an error
		 */
	}
	error = FUNC0(eeprom.data, eeprom_info->eeprom_info_buf,
	    eeprom.len);
	FUNC1(eeprom.data, M_MLX5_EEPROM);

	return (error);
}