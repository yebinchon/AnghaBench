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
typedef  int uint32_t ;

/* Variables and functions */
 int CFGMECH_1 ; 
 int CFGMECH_2 ; 
 int CFGMECH_NONE ; 
 int /*<<< orphan*/  CONF1_ADDR_PORT ; 
 int CONF1_ENABLE_CHK ; 
 int CONF1_ENABLE_CHK1 ; 
 int CONF1_ENABLE_MSK1 ; 
 int CONF1_ENABLE_RES1 ; 
 int CONF2_ENABLE_CHK ; 
 int /*<<< orphan*/  CONF2_ENABLE_PORT ; 
 int CONF2_ENABLE_RES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ bootverbose ; 
 int cfgmech ; 
 int devmax ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int
FUNC7(void)
{
	uint32_t mode1res, oldval1;
	uint8_t mode2res, oldval2;

	/* Check for type #1 first. */
	oldval1 = FUNC2(CONF1_ADDR_PORT);

	if (bootverbose) {
		FUNC6("pci_open(1):\tmode 1 addr port (0x0cf8) is 0x%08x\n",
		    oldval1);
	}

	cfgmech = CFGMECH_1;
	devmax = 32;

	FUNC4(CONF1_ADDR_PORT, CONF1_ENABLE_CHK);
	FUNC0(1);
	mode1res = FUNC2(CONF1_ADDR_PORT);
	FUNC4(CONF1_ADDR_PORT, oldval1);

	if (bootverbose)
		FUNC6("pci_open(1a):\tmode1res=0x%08x (0x%08lx)\n",  mode1res,
		    CONF1_ENABLE_CHK);

	if (mode1res) {
		if (FUNC5(32)) 
			return (cfgmech);
	}

	FUNC4(CONF1_ADDR_PORT, CONF1_ENABLE_CHK1);
	mode1res = FUNC2(CONF1_ADDR_PORT);
	FUNC4(CONF1_ADDR_PORT, oldval1);

	if (bootverbose)
		FUNC6("pci_open(1b):\tmode1res=0x%08x (0x%08lx)\n",  mode1res,
		    CONF1_ENABLE_CHK1);

	if ((mode1res & CONF1_ENABLE_MSK1) == CONF1_ENABLE_RES1) {
		if (FUNC5(32)) 
			return (cfgmech);
	}

	/* Type #1 didn't work, so try type #2. */
	oldval2 = FUNC1(CONF2_ENABLE_PORT);

	if (bootverbose) {
		FUNC6("pci_open(2):\tmode 2 enable port (0x0cf8) is 0x%02x\n",
		    oldval2);
	}

	if ((oldval2 & 0xf0) == 0) {

		cfgmech = CFGMECH_2;
		devmax = 16;

		FUNC3(CONF2_ENABLE_PORT, CONF2_ENABLE_CHK);
		mode2res = FUNC1(CONF2_ENABLE_PORT);
		FUNC3(CONF2_ENABLE_PORT, oldval2);

		if (bootverbose)
			FUNC6("pci_open(2a):\tmode2res=0x%02x (0x%02x)\n", 
			    mode2res, CONF2_ENABLE_CHK);

		if (mode2res == CONF2_ENABLE_RES) {
			if (bootverbose)
				FUNC6("pci_open(2a):\tnow trying mechanism 2\n");

			if (FUNC5(16)) 
				return (cfgmech);
		}
	}

	/* Nothing worked, so punt. */
	cfgmech = CFGMECH_NONE;
	devmax = 0;
	return (cfgmech);
}