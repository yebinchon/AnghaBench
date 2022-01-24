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
typedef  int /*<<< orphan*/  u_char ;
struct viapm_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct viapm_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIAPM_SDA ; 
 int /*<<< orphan*/  FUNC3 (struct viapm_softc*) ; 
 struct viapm_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev, int data)
{
	struct viapm_softc *viapm = FUNC4(dev);
	u_char val;

	FUNC1(viapm);
	val = FUNC0(GPIO_VAL);

	if (data)
		val |= VIAPM_SDA;
	else
		val &= ~VIAPM_SDA;

	FUNC2(GPIO_VAL, val);
	FUNC3(viapm);

	return;
}