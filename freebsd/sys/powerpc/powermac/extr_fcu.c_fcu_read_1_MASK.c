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
struct iic_msg {int member_1; int member_2; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IIC_M_NOSTOP ; 
 int IIC_M_RD ; 
 int IIC_M_WR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC1 (int /*<<< orphan*/ ,struct iic_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t addr, uint8_t reg, uint8_t *data)
{
	uint8_t buf[4];
	int err, try = 0;

	struct iic_msg msg[2] = {
	    { addr, IIC_M_WR | IIC_M_NOSTOP, 1, reg },
	    { addr, IIC_M_RD, 1, buf },
	};

	for (;;)
	{
		  err = FUNC1(dev, msg, 2);
		  if (err != 0)
			  goto retry;

		  *data = *((uint8_t*)buf);
		  return (0);
	retry:
		  if (++try > 5) {
			  FUNC0(dev, "iicbus read failed\n");
			  return (-1);
		  }
		  FUNC2("fcu_read_1", hz);
	}
}