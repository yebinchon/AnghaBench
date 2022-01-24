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
struct iic_msg {int len; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIC_M_WR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct iic_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t addr, uint8_t reg, uint8_t *buff, int len)
{
	uint8_t buf[4];
	int try = 0;

	struct iic_msg msg[] = {
		{ addr, &IIC_M_WR, 0, buf }
	};

	/* Prepare the write msg. */
	msg[0].len = len + 1;
	buf[0] = reg;
	FUNC2(buf + 1, buff, len);

	for (;;)
	{
		if (FUNC1(dev, msg, 1) == 0)
			return (0);
		if (++try > 5) {
			FUNC0(dev, "iicbus write failed\n");
			return (-1);
		}
		FUNC3("ds1631_write", hz);
	}
}