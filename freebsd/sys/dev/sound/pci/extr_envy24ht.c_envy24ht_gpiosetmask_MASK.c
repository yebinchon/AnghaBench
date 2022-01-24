#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct sc_info {TYPE_1__* cfg; } ;
struct TYPE_2__ {int subdevice; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENVY24HT_CCS_GPIO_HMASK ; 
 int /*<<< orphan*/  ENVY24HT_CCS_GPIO_LMASK ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC1(struct sc_info *sc, u_int32_t mask)
{
        FUNC0(sc, ENVY24HT_CCS_GPIO_LMASK, mask, 2);
	if (sc->cfg->subdevice != 0x1150)
        FUNC0(sc, ENVY24HT_CCS_GPIO_HMASK, mask >> 16, 1);
	return;
}