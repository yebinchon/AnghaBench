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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ MSR_HV_SCONTROL ; 
 int MSR_HV_SCTRL_RSVD_MASK ; 
 scalar_t__ MSR_HV_SIEFP ; 
 int MSR_HV_SIEFP_RSVD_MASK ; 
 scalar_t__ MSR_HV_SIMP ; 
 int MSR_HV_SIMP_RSVD_MASK ; 
 scalar_t__ MSR_HV_SINT0 ; 
 int MSR_HV_SINT_MASKED ; 
 scalar_t__ VMBUS_SINT_MESSAGE ; 
 scalar_t__ VMBUS_SINT_TIMER ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	uint64_t orig;
	uint32_t sint;

	/*
	 * Disable SynIC.
	 */
	orig = FUNC0(MSR_HV_SCONTROL);
	FUNC1(MSR_HV_SCONTROL, (orig & MSR_HV_SCTRL_RSVD_MASK));

	/*
	 * Mask message and event flags SINT.
	 */
	sint = MSR_HV_SINT0 + VMBUS_SINT_MESSAGE;
	orig = FUNC0(sint);
	FUNC1(sint, orig | MSR_HV_SINT_MASKED);

	/*
	 * Mask timer SINT.
	 */
	sint = MSR_HV_SINT0 + VMBUS_SINT_TIMER;
	orig = FUNC0(sint);
	FUNC1(sint, orig | MSR_HV_SINT_MASKED);

	/*
	 * Teardown SynIC message.
	 */
	orig = FUNC0(MSR_HV_SIMP);
	FUNC1(MSR_HV_SIMP, (orig & MSR_HV_SIMP_RSVD_MASK));

	/*
	 * Teardown SynIC event flags.
	 */
	orig = FUNC0(MSR_HV_SIEFP);
	FUNC1(MSR_HV_SIEFP, (orig & MSR_HV_SIEFP_RSVD_MASK));
}