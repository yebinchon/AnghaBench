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
typedef  scalar_t__ uint64_t ;
struct pvclock_vcpu_time_info {int /*<<< orphan*/  tsc_shift; int /*<<< orphan*/  tsc_to_system_mul; scalar_t__ tsc_timestamp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static uint64_t
FUNC2(struct pvclock_vcpu_time_info *ti)
{
	uint64_t delta;

	delta = FUNC1() - ti->tsc_timestamp;

	return (FUNC0(delta, ti->tsc_to_system_mul,
	    ti->tsc_shift));
}