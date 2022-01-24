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
typedef  int /*<<< orphan*/  uint16_t ;
struct iic_msg {int /*<<< orphan*/ * buf; scalar_t__ len; int /*<<< orphan*/  flags; int /*<<< orphan*/  slave; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIC_M_WR ; 
 int MAX_TRANSFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct iic_msg*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC3(device_t slavedev, uint8_t regaddr, void *buffer,
    uint16_t buflen, int waithow)
{
	struct iic_msg	msgs;
	uint8_t		slaveaddr;
	uint8_t		newbuf[MAX_TRANSFER];

	slaveaddr = FUNC0(slavedev);

	newbuf[0] = regaddr;
	FUNC2(newbuf + 1, buffer, buflen);
	msgs.slave = slaveaddr;
	msgs.flags = IIC_M_WR;
	msgs.len   = 1 + buflen;
	msgs.buf   = newbuf;

	return (FUNC1(slavedev, &msgs, 1, waithow));
}