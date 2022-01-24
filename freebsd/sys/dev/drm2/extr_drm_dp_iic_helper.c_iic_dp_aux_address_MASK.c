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
typedef  int /*<<< orphan*/  u16 ;
struct iic_dp_aux_data {int running; int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MODE_I2C_READ ; 
 int MODE_I2C_START ; 
 int MODE_I2C_WRITE ; 
 struct iic_dp_aux_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(device_t idev, u16 address, bool reading)
{
	struct iic_dp_aux_data *aux_data;
	int mode, ret;

	aux_data = FUNC0(idev);
	mode = MODE_I2C_START;
	if (reading)
		mode |= MODE_I2C_READ;
	else
		mode |= MODE_I2C_WRITE;
	aux_data->address = address;
	aux_data->running = true;
	ret = FUNC1(idev, mode, 0, NULL);
	return (ret);
}