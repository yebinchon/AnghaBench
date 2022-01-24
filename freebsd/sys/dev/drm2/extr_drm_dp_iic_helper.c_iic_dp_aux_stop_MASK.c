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
struct iic_dp_aux_data {int running; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MODE_I2C_READ ; 
 int MODE_I2C_STOP ; 
 int MODE_I2C_WRITE ; 
 struct iic_dp_aux_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(device_t idev, bool reading)
{
	struct iic_dp_aux_data *aux_data;
	int mode;

	aux_data = FUNC0(idev);
	mode = MODE_I2C_STOP;
	if (reading)
		mode |= MODE_I2C_READ;
	else
		mode |= MODE_I2C_WRITE;
	if (aux_data->running) {
		(void)FUNC1(idev, mode, 0, NULL);
		aux_data->running = false;
	}
}