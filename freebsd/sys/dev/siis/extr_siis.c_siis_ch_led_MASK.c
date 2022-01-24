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
struct siis_channel {int /*<<< orphan*/  r_mem; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIIS_P_CTLCLR ; 
 int /*<<< orphan*/  SIIS_P_CTLSET ; 
 int /*<<< orphan*/  SIIS_P_CTL_LED_ON ; 
 struct siis_channel* FUNC1 (scalar_t__) ; 

__attribute__((used)) static void
FUNC2(void *priv, int onoff)
{
	device_t dev;
	struct siis_channel *ch;

	dev = (device_t)priv;
	ch = FUNC1(dev);

	if (onoff == 0)
		FUNC0(ch->r_mem, SIIS_P_CTLCLR, SIIS_P_CTL_LED_ON);
	else
		FUNC0(ch->r_mem, SIIS_P_CTLSET, SIIS_P_CTL_LED_ON);
}