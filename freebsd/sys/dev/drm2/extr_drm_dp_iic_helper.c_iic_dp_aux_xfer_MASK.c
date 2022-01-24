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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct iic_msg {int len; int flags; int slave; int /*<<< orphan*/ * buf; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int IIC_M_RD ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(device_t idev, struct iic_msg *msgs, uint32_t num)
{
	u8 *buf;
	int b, m, ret;
	u16 len;
	bool reading;

	ret = 0;
	reading = false;

	for (m = 0; m < num; m++) {
		len = msgs[m].len;
		buf = msgs[m].buf;
		reading = (msgs[m].flags & IIC_M_RD) != 0;
		ret = FUNC1(idev, msgs[m].slave >> 1, reading);
		if (ret < 0)
			break;
		if (reading) {
			for (b = 0; b < len; b++) {
				ret = FUNC2(idev, &buf[b]);
				if (ret != 0)
					break;
			}
		} else {
			for (b = 0; b < len; b++) {
				ret = FUNC3(idev, buf[b]);
				if (ret < 0)
					break;
			}
		}
		if (ret != 0)
			break;
	}
	FUNC4(idev, reading);
	FUNC0("dp_aux_xfer return %d\n", ret);
	return (-ret);
}