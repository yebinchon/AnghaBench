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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct timecounter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int UINT32_MAX ; 
 int /*<<< orphan*/  vcpu_info ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC2(struct timecounter *tc)
{
	uint64_t vcpu_time;

	/*
	 * We don't disable preemption here because the worst that can
	 * happen is reading the vcpu_info area of a different CPU than
	 * the one we are currently running on, but that would also
	 * return a valid tc (and we avoid the overhead of
	 * critical_{enter/exit} calls).
	 */
	vcpu_time = FUNC1(FUNC0(vcpu_info));

	return (vcpu_time & UINT32_MAX);
}