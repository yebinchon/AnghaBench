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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct octeon_device {TYPE_1__* mem_bus_space; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,int,int) ; 

__attribute__((used)) static inline void
FUNC2(struct octeon_device *oct, uint32_t reg, uint64_t val)
{

#ifdef __i386__
	lio_write_bar1_mem32(oct, reg, (uint32_t)val);
	lio_write_bar1_mem32(oct, reg + 4, val >> 32);
#else
	FUNC0(oct->mem_bus_space[1].tag,
			  oct->mem_bus_space[1].handle, reg, val);
#endif
}