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
struct iic_msg {int slave; int len; int* buf; int /*<<< orphan*/  flags; } ;
struct ads111x_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  IIC_M_WR ; 
 int /*<<< orphan*/  IIC_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct iic_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iic_msg*) ; 

__attribute__((used)) static int
FUNC4(struct ads111x_softc *sc, int reg, int val) 
{
	uint8_t data[3];
	struct iic_msg msgs[1];
	uint8_t slaveaddr;

	slaveaddr = FUNC1(sc->dev);

	data[0] = reg;
	FUNC0(&data[1], val);

	msgs[0].slave = slaveaddr;
	msgs[0].flags = IIC_M_WR;
	msgs[0].len   = sizeof(data);
	msgs[0].buf   = data;

	return (FUNC2(sc->dev, msgs, FUNC3(msgs), IIC_WAIT));
}