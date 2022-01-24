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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int DEF_CACHE_LINE ; 
 int DEF_LATENCY ; 
 int FW_DEVICE_PCIO2FW ; 
 int FW_VENDORID_SUN ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int PCIM_CMD_MWRICEN ; 
 int /*<<< orphan*/  PCIR_CACHELNSZ ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  PCIR_LATTIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ firewire_debug ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC6(device_t self)
{
	int olatency, latency, ocache_line, cache_line;
	uint16_t cmd;

	cmd = FUNC3(self, PCIR_COMMAND, 2);
	cmd |= PCIM_CMD_BUSMASTEREN | PCIM_CMD_MWRICEN;
#if 1  /* for broken hardware */
	cmd &= ~PCIM_CMD_MWRICEN;
#endif
	FUNC5(self, PCIR_COMMAND, cmd, 2);

	/*
	 * Some Sun PCIO-2 FireWire controllers have their intpin register
	 * bogusly set to 0, although it should be 3. Correct that.
	 */
	if (FUNC1(self) == (FW_VENDORID_SUN | FW_DEVICE_PCIO2FW) &&
	    FUNC2(self) == 0)
		FUNC4(self, 3);

	latency = olatency = FUNC3(self, PCIR_LATTIMER, 1);
#define DEF_LATENCY 0x20
	if (olatency < DEF_LATENCY) {
		latency = DEF_LATENCY;
		FUNC5(self, PCIR_LATTIMER, latency, 1);
	}

	cache_line = ocache_line = FUNC3(self, PCIR_CACHELNSZ, 1);
#define DEF_CACHE_LINE 8
	if (ocache_line < DEF_CACHE_LINE) {
		cache_line = DEF_CACHE_LINE;
		FUNC5(self, PCIR_CACHELNSZ, cache_line, 1);
	}

	if (firewire_debug) {
		FUNC0(self, "latency timer %d -> %d.\n",
			olatency, latency);
		FUNC0(self, "cache size %d -> %d.\n",
			ocache_line, cache_line);
	}

	return 0;
}