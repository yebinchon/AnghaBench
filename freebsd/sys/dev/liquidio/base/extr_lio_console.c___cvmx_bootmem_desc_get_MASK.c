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
typedef  unsigned long long uint64_t ;
typedef  unsigned long long uint32_t ;
struct octeon_device {int dummy; } ;

/* Variables and functions */
 unsigned long long FUNC0 (struct octeon_device*,unsigned long long) ; 
 unsigned long long FUNC1 (struct octeon_device*,unsigned long long) ; 

__attribute__((used)) static inline uint64_t
FUNC2(struct octeon_device *oct, uint64_t base,
			uint32_t offset, uint32_t size)
{

	base = (1ull << 63) | (base + offset);
	switch (size) {
	case 4:
		return (FUNC0(oct, base));
	case 8:
		return (FUNC1(oct, base));
	default:
		return (0);
	}
}