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
 int /*<<< orphan*/  ENVY24HT_MT_PADDR ; 
 int /*<<< orphan*/  ENVY24HT_MT_PCNT ; 
 int /*<<< orphan*/  ENVY24HT_MT_PCTL ; 
 int ENVY24HT_MT_PCTL_PSTART ; 
 int ENVY24HT_MT_PCTL_RSTART ; 
 int PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC4(struct sc_info *sc, int dir)
{
	u_int32_t stat, sw;

#if(0)
	device_printf(sc->dev, "envy24ht_start(sc, %d)\n", dir);
#endif
	if (dir == PCMDIR_PLAY)
		sw = ENVY24HT_MT_PCTL_PSTART;
	else
		sw = ENVY24HT_MT_PCTL_RSTART;

	stat = FUNC2(sc, ENVY24HT_MT_PCTL, 1);
	FUNC3(sc, ENVY24HT_MT_PCTL, stat | sw, 1);
#if(0)
	DELAY(100);
	device_printf(sc->dev, "PADDR:0x%08x\n", envy24ht_rdmt(sc, ENVY24HT_MT_PADDR, 4));
	device_printf(sc->dev, "PCNT:%ld\n", envy24ht_rdmt(sc, ENVY24HT_MT_PCNT, 2));
#endif

	return;
}