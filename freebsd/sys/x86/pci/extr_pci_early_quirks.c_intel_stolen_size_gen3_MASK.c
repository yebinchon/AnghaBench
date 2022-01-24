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
typedef  int vm_paddr_t ;
typedef  int uint32_t ;

/* Variables and functions */
#define  G33_GMCH_GMS_STOLEN_128M 140 
#define  G33_GMCH_GMS_STOLEN_256M 139 
 int /*<<< orphan*/  I830_GMCH_CTRL ; 
 int I855_GMCH_GMS_MASK ; 
#define  I855_GMCH_GMS_STOLEN_16M 138 
#define  I855_GMCH_GMS_STOLEN_1M 137 
#define  I855_GMCH_GMS_STOLEN_32M 136 
#define  I855_GMCH_GMS_STOLEN_4M 135 
#define  I855_GMCH_GMS_STOLEN_8M 134 
#define  I915_GMCH_GMS_STOLEN_48M 133 
#define  I915_GMCH_GMS_STOLEN_64M 132 
#define  INTEL_GMCH_GMS_STOLEN_160M 131 
#define  INTEL_GMCH_GMS_STOLEN_224M 130 
#define  INTEL_GMCH_GMS_STOLEN_352M 129 
#define  INTEL_GMCH_GMS_STOLEN_96M 128 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static vm_paddr_t
FUNC2(int bus, int slot, int func)
{
	uint32_t ctrl;
	vm_paddr_t val;

	ctrl = FUNC1(0, 0, 0, I830_GMCH_CTRL, 2);
	val = ctrl & I855_GMCH_GMS_MASK;

	switch (val) {
	case I855_GMCH_GMS_STOLEN_1M:
		return (FUNC0(1));
	case I855_GMCH_GMS_STOLEN_4M:
		return (FUNC0(4));
	case I855_GMCH_GMS_STOLEN_8M:
		return (FUNC0(8));
	case I855_GMCH_GMS_STOLEN_16M:
		return (FUNC0(16));
	case I855_GMCH_GMS_STOLEN_32M:
		return (FUNC0(32));
	case I915_GMCH_GMS_STOLEN_48M:
		return (FUNC0(48));
	case I915_GMCH_GMS_STOLEN_64M:
		return (FUNC0(64));
	case G33_GMCH_GMS_STOLEN_128M:
		return (FUNC0(128));
	case G33_GMCH_GMS_STOLEN_256M:
		return (FUNC0(256));
	case INTEL_GMCH_GMS_STOLEN_96M:
		return (FUNC0(96));
	case INTEL_GMCH_GMS_STOLEN_160M:
		return (FUNC0(160));
	case INTEL_GMCH_GMS_STOLEN_224M:
		return (FUNC0(224));
	case INTEL_GMCH_GMS_STOLEN_352M:
		return (FUNC0(352));
	}
	return (0);
}