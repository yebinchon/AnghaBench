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
struct iic_msg {size_t member_2; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIC_M_WR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct iic_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iic_msg*) ; 

__attribute__((used)) static int
FUNC2(device_t dev, uint32_t addr, uint8_t *data, size_t len)
{
	struct iic_msg msg[1] = {
	    { addr, &IIC_M_WR, len, *data },
	};

	if (FUNC0(dev, msg, FUNC1(msg)) != 0)
		return (-1);

	return (0);
}