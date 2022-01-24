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
typedef  int /*<<< orphan*/  u8 ;
struct iic_dp_aux_data {int /*<<< orphan*/  running; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MODE_I2C_WRITE ; 
 struct iic_dp_aux_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(device_t idev, u8 byte)
{
	struct iic_dp_aux_data *aux_data;
	int ret;

	aux_data = FUNC0(idev);

	if (!aux_data->running)
		return (-EIO);

	ret = FUNC1(idev, MODE_I2C_WRITE, byte, NULL);
	return (ret);
}