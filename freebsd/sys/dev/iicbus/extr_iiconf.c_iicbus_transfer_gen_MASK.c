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
struct iic_msg {int slave; int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IIC_ENOTSUPP ; 
 int IIC_ERESOURCE ; 
 int /*<<< orphan*/  IIC_LAST_READ ; 
 int IIC_M_NOSTART ; 
 int IIC_M_NOSTOP ; 
 int IIC_M_RD ; 
 int LSB ; 
 int /*<<< orphan*/  M_TEMP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int
FUNC7(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
	int i, error, lenread, lenwrote, nkid, rpstart, addr;
	device_t *children, bus;
	bool started;

	if ((error = FUNC0(dev, &children, &nkid)) != 0)
		return (IIC_ERESOURCE);
	if (nkid != 1) {
		FUNC1(children, M_TEMP);
		return (IIC_ENOTSUPP);
	}
	bus = children[0];
	rpstart = 0;
	FUNC1(children, M_TEMP);
	started = false;
	for (i = 0, error = 0; i < nmsgs && error == 0; i++) {
		addr = msgs[i].slave;
		if (msgs[i].flags & IIC_M_RD)
			addr |= LSB;
		else
			addr &= ~LSB;

		if (!(msgs[i].flags & IIC_M_NOSTART)) {
			if (rpstart)
				error = FUNC3(bus, addr, 0);
			else
				error = FUNC4(bus, addr, 0);
			if (error != 0)
				break;
			started = true;
		}

		if (msgs[i].flags & IIC_M_RD)
			error = FUNC2(bus, msgs[i].buf, msgs[i].len,
			    &lenread, IIC_LAST_READ, 0);
		else
			error = FUNC6(bus, msgs[i].buf, msgs[i].len,
			    &lenwrote, 0);
		if (error != 0)
			break;

		if (!(msgs[i].flags & IIC_M_NOSTOP)) {
			rpstart = 0;
			FUNC5(bus);
		} else {
			rpstart = 1;	/* Next message gets repeated start */
		}
	}
	if (error != 0 && started)
		FUNC5(bus);
	return (error);
}