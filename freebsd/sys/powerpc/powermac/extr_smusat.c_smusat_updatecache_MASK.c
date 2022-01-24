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
typedef  int /*<<< orphan*/  value ;
typedef  int uint8_t ;
struct smusat_softc {int /*<<< orphan*/  sc_cache; int /*<<< orphan*/  sc_last_update; } ;
struct iic_msg {int member_1; int member_2; int* member_3; int /*<<< orphan*/  slave; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IIC_M_NOSTOP ; 
 int IIC_M_RD ; 
 int IIC_M_WR ; 
 struct smusat_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct iic_msg*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  time_uptime ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	uint8_t reg = 0x3f;
	uint8_t	value[16];
	struct smusat_softc *sc = FUNC0(dev);
	int error;
	struct iic_msg msgs[2] = {
	    {0, IIC_M_WR | IIC_M_NOSTOP, 1, reg},
	    {0, IIC_M_RD, 16, value},
	};

	msgs[0].slave = msgs[1].slave = FUNC1(dev);
	error = FUNC2(dev, msgs, 2);
	if (error)
		return (error);

	sc->sc_last_update = time_uptime;
	FUNC3(sc->sc_cache, value, sizeof(value));
	return (0);
}