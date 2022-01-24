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
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ APIC_ELVT_MAX ; 
 int APIC_EXTF_ELVT_MASK ; 
 int APIC_EXTF_ELVT_SHIFT ; 
 int FUNC0 () ; 
 int FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static inline uint32_t
FUNC2(void)
{
	uint32_t extf;
	uint32_t count;

	extf = FUNC0();
	count = (extf & APIC_EXTF_ELVT_MASK) >> APIC_EXTF_ELVT_SHIFT;
	count = FUNC1(count, APIC_ELVT_MAX + 1);
	return (count);
}