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
typedef  int uint8_t ;
struct s390rtc_softc {int sc_addr; } ;
struct iic_msg {int slave; size_t len; int* buf; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIC_M_RD ; 
 int /*<<< orphan*/  IIC_WAIT ; 
 int FUNC0 (int) ; 
 struct s390rtc_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct iic_msg*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint8_t reg, uint8_t *buf, size_t len)
{
	struct s390rtc_softc *sc = FUNC1(dev);
	struct iic_msg msg[] = {
		{
			.slave = sc->sc_addr | reg,
			.flags = IIC_M_RD,
			.len = len,
			.buf = buf,
		},
	};
	int i;
	int error;

	error = FUNC2(dev, msg, 1, IIC_WAIT);
	if (error)
		return (error);

	/* this chip returns each byte in reverse order */
	for (i = 0; i < len; ++i)
		buf[i] = FUNC0(buf[i]);

	return (0);
}