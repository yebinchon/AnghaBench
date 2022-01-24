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
struct are_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_MIIADDR ; 
 int /*<<< orphan*/  CSR_MIIDATA ; 
 int FUNC0 (struct are_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct are_softc*,int /*<<< orphan*/ ,int) ; 
 int MIIADDR_BUSY ; 
 int MIIADDR_PHY_SHIFT ; 
 int MIIADDR_REG_SHIFT ; 
 int MIIADDR_WRITE ; 
 struct are_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, int phy, int reg, int data)
{
	struct are_softc * sc = FUNC2(dev);
	uint32_t	addr;
	int		i;

	/* write the data register */
	FUNC1(sc, CSR_MIIDATA, data);

	/* write the address to latch it in */
	addr = (phy << MIIADDR_PHY_SHIFT) | (reg << MIIADDR_REG_SHIFT) |
	    MIIADDR_WRITE;
	FUNC1(sc, CSR_MIIADDR, addr);

	for (i = 0; i < 100000000; i++) {
		if ((FUNC0(sc, CSR_MIIADDR) & MIIADDR_BUSY) == 0)
			break;
	}

	return (0);
}