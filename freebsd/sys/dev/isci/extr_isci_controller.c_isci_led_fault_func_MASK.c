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
struct ISCI_PHY {int led_fault; int index; int /*<<< orphan*/  led_locate; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void *priv, int onoff)
{
	struct ISCI_PHY *phy = priv;

	/* map onoff to the fault LED */
	phy->led_fault = onoff;
	FUNC0(phy->handle, 1 << phy->index, 
		phy->led_fault, phy->led_locate, 0);
}