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
#define  ILC 130 
#define  SGMIIC 129 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
#define  XAUIC 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int XAUI_CONFIG_RFEN ; 
 int XAUI_CONFIG_TFEN ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC5(uint64_t nae_base, int nblock, int port_type, int port)
{
	uint32_t mac_cfg1, xaui_cfg;
	uint32_t netwk_inf;
	int iface = port & 0x3;

	switch(port_type) {
	case SGMIIC:
		mac_cfg1 = FUNC3(nae_base,
		    FUNC0(nblock, iface));
		FUNC4(nae_base,
		    FUNC0(nblock, iface),
		    mac_cfg1		&
		    ~((1 << 2)		|	/* rx enable */
		    1));			/* tx enable */
		netwk_inf = FUNC3(nae_base,
		    FUNC1(nblock, iface));
		FUNC4(nae_base,
		    FUNC1(nblock, iface),
		    netwk_inf		&
		    ~(1 << 2));			/* enable tx */
		break;
	case XAUIC:
		xaui_cfg = FUNC3(nae_base,
		    FUNC2(nblock));
		FUNC4(nae_base,
		    FUNC2(nblock),
		    xaui_cfg		&
		    ~(XAUI_CONFIG_TFEN	|
		    XAUI_CONFIG_RFEN));
		break;
	case ILC:
		break;
	}
}