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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct pvclock_vcpu_time_info {int version; int /*<<< orphan*/  flags; scalar_t__ system_time; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pvclock_vcpu_time_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2(struct pvclock_vcpu_time_info *ti,
    uint64_t *cycles, uint8_t *flags)
{
	uint32_t version;

	do {
		version = ti->version;
		FUNC1();
		*cycles = ti->system_time + FUNC0(ti);
		*flags = ti->flags;
		FUNC1();
	} while ((ti->version & 1) != 0 || ti->version != version);
}