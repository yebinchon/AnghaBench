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
typedef  int u_int32_t ;
struct sc_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENVY24_MT_AC97CMD ; 
 int ENVY24_MT_AC97CMD_CLD ; 
 int ENVY24_MT_AC97CMD_RDY ; 
 int ENVY24_MT_AC97CMD_WRM ; 
 int ENVY24_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC4(struct sc_info *sc)
{
	u_int32_t data;
	int i;

#if(0)
	device_printf(sc->dev, "envy24_slavecd()\n");
#endif
	FUNC3(sc, ENVY24_MT_AC97CMD,
	    ENVY24_MT_AC97CMD_CLD | ENVY24_MT_AC97CMD_WRM, 1);
	FUNC0(10);
	FUNC3(sc, ENVY24_MT_AC97CMD, 0, 1);
	FUNC0(1000);
	for (i = 0; i < ENVY24_TIMEOUT; i++) {
		data = FUNC2(sc, ENVY24_MT_AC97CMD, 1);
		if (data & ENVY24_MT_AC97CMD_RDY) {
			return 0;
		}
	}

	return -1;
}