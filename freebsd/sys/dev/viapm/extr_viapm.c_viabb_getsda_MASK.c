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
typedef  int u_char ;
struct viapm_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXTSMI_VAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct viapm_softc*) ; 
 int VIAPM_SDA ; 
 int /*<<< orphan*/  FUNC2 (struct viapm_softc*) ; 
 struct viapm_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct viapm_softc *viapm = FUNC3(dev);
	u_char val;

	FUNC1(viapm);
	val = FUNC0(EXTSMI_VAL);
	FUNC2(viapm);
	return ((val & VIAPM_SDA) != 0);
}