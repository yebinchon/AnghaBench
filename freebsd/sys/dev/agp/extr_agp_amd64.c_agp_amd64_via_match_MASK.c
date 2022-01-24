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

/* Variables and functions */
 int /*<<< orphan*/  AGP_VIA_AGPSEL ; 
 int PCIC_BRIDGE ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_SUBCLASS ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int PCIS_BRIDGE_PCI ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(void)
{
	/* XXX Some VIA bridge requires secondary AGP bridge at 0:1:0. */
	if (FUNC0(0, 1, 0, PCIR_CLASS, 1) != PCIC_BRIDGE ||
	    FUNC0(0, 1, 0, PCIR_SUBCLASS, 1) != PCIS_BRIDGE_PCI ||
	    FUNC0(0, 1, 0, PCIR_VENDOR, 2) != 0x1106 ||
	    FUNC0(0, 1, 0, PCIR_DEVICE, 2) != 0xb188 ||
	    (FUNC0(0, 1, 0, AGP_VIA_AGPSEL, 1) & 2))
		return (0);

	return (1);
}