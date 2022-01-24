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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
#define  NLM_SGMII_DUPLEX_HALF 130 
#define  NLM_SGMII_SPEED_10 129 
#define  NLM_SGMII_SPEED_100 128 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC5(uint64_t nae_base, int nblock, int iface, int reset,
    int rx_en, int tx_en, int speed, int duplex)
{
	uint32_t mac_cfg1, mac_cfg2, netwk_inf;

	mac_cfg1 = FUNC3(nae_base,
	    FUNC0(nblock,iface));
	mac_cfg2 = FUNC3(nae_base,
	    FUNC1(nblock,iface));
	netwk_inf = FUNC3(nae_base,
	    FUNC2(nblock, iface));

	mac_cfg1 &= ~(0x1 << 31); /* remove reset */
	mac_cfg1 &= ~(0x1 << 2); /* remove rx */
	mac_cfg1 &= ~(0x1); /* remove tx */
	mac_cfg2 &= ~(0x3 << 8); /* remove interface mode bits */
	mac_cfg2 &= ~(0x1); /* remove duplex */
	netwk_inf &= ~(0x1 << 2); /* remove tx */
	netwk_inf &= ~(0x3); /* remove speed */

	switch (speed) {
	case NLM_SGMII_SPEED_10:
		netwk_inf |= 0x0; /* 2.5 Mhz clock for 10 Mbps */
		mac_cfg2  |= (0x1 << 8); /* enable 10/100 Mbps */
		break;
	case NLM_SGMII_SPEED_100:
		netwk_inf |= 0x1; /* 25 Mhz clock for 100 Mbps */
		mac_cfg2  |= (0x1 << 8); /* enable 10/100 Mbps */
		break;
	default: /* make it as 1G */
		netwk_inf |= 0x2; /* 125 Mhz clock for 1G */
		mac_cfg2  |= (0x2 << 8); /* enable 1G */
		break;
	}

	if (reset)
		mac_cfg1 |= (0x1 << 31); /* set reset */

	if (rx_en)
		mac_cfg1 |= (0x1 << 2); /* set rx */

        FUNC4(nae_base,
	    FUNC2(nblock, iface),
	    netwk_inf);

	if (tx_en) {
		mac_cfg1 |= 0x1; /* set tx */
		netwk_inf |= (0x1 << 2); /* set tx */
	}

	switch (duplex) {
	case NLM_SGMII_DUPLEX_HALF:
		/* duplexity is already set to half duplex */
		break;
	default:
		mac_cfg2 |= 0x1; /* set full duplex */
	}

	FUNC4(nae_base, FUNC0(nblock, iface), mac_cfg1);
	FUNC4(nae_base, FUNC1(nblock, iface), mac_cfg2);
	FUNC4(nae_base, FUNC2(nblock, iface),
	    netwk_inf);
}