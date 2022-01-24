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

/* Variables and functions */
#define  IFM_1000_T 131 
#define  IFM_100_TX 130 
#define  IFM_10_T 129 
#define  IFM_AUTO 128 
 scalar_t__ IFM_ETHER ; 
 int IFM_FDX ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int PORT_SERIAL_AUTONEG ; 
 int PORT_SERIAL_AUTONEG_FC ; 
 int PORT_SERIAL_FORCE_LINK_FAIL ; 
 int PORT_SERIAL_FULL_DUPLEX ; 
 int PORT_SERIAL_GMII_SPEED_1000 ; 
 int PORT_SERIAL_MII_SPEED_100 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_SERIAL_MRU_1552 ; 
 int PORT_SERIAL_RES_BIT9 ; 
 int PORT_SERIAL_SPEED_AUTONEG ; 

__attribute__((used)) static uint32_t
FUNC3(uint32_t media)
{
	uint32_t port_config;

	port_config = PORT_SERIAL_RES_BIT9 | PORT_SERIAL_FORCE_LINK_FAIL |
	    FUNC2(PORT_SERIAL_MRU_1552);

	if (FUNC1(media) == IFM_ETHER) {
		switch(FUNC0(media)) {
			case IFM_AUTO:
				break;
			case IFM_1000_T:
				port_config  |= (PORT_SERIAL_GMII_SPEED_1000 |
				    PORT_SERIAL_AUTONEG | PORT_SERIAL_AUTONEG_FC
				    | PORT_SERIAL_SPEED_AUTONEG);
				break;
			case IFM_100_TX:
				port_config  |= (PORT_SERIAL_MII_SPEED_100 |
				    PORT_SERIAL_AUTONEG | PORT_SERIAL_AUTONEG_FC
				    | PORT_SERIAL_SPEED_AUTONEG);
				break;
			case IFM_10_T:
				port_config  |= (PORT_SERIAL_AUTONEG |
				    PORT_SERIAL_AUTONEG_FC |
				    PORT_SERIAL_SPEED_AUTONEG);
				break;
		}
		if (media & IFM_FDX)
			port_config |= PORT_SERIAL_FULL_DUPLEX;
	}
	return (port_config);
}