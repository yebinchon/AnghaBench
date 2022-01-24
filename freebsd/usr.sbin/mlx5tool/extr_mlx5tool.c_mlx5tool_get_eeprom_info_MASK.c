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
struct mlx5_tool_addr {int dummy; } ;
struct mlx5_eeprom_get {int /*<<< orphan*/ * eeprom_info_buf; scalar_t__ eeprom_info_out_len; struct mlx5_tool_addr devaddr; } ;
typedef  int /*<<< orphan*/  eeprom_info ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MLX5_EEPROM_GET ; 
 scalar_t__ MLX5_EEPROM_PAGE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct mlx5_eeprom_get*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_eeprom_get*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_eeprom_get*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(int ctldev, const struct mlx5_tool_addr *addr)
{
	struct mlx5_eeprom_get eeprom_info;
	int error;

	FUNC3(&eeprom_info, 0, sizeof(eeprom_info));
	eeprom_info.devaddr = *addr;

	error = FUNC1(ctldev, MLX5_EEPROM_GET, &eeprom_info);
	if (error != 0) {
		FUNC5("MLX5_EEPROM_GET");
		return (error);
	}
	eeprom_info.eeprom_info_buf =
	    FUNC2(eeprom_info.eeprom_info_out_len + MLX5_EEPROM_PAGE_LENGTH);
	if (eeprom_info.eeprom_info_buf == NULL) {
		FUNC5("alloc eeprom_info.eeprom_info_buf ");
		return (ENOMEM);
	}
	error = FUNC1(ctldev, MLX5_EEPROM_GET, &eeprom_info);
	if (error != 0) {
		FUNC5("MLX5_EEPROM_GET");
		FUNC0(eeprom_info.eeprom_info_buf);
		return (error);
	}

	FUNC4(&eeprom_info);

	FUNC0(eeprom_info.eeprom_info_buf);
	return (0);
}