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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  SMCCC_ARCH_WORKAROUND_1 ; 
 scalar_t__ SMCCC_VERSION_1_0 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ smccc_version ; 

int
FUNC2(void)
{

	FUNC0(smccc_version != SMCCC_VERSION_1_0,
	    ("SMCCC arch workaround 1 called with an invalid SMCCC interface"));
	return (FUNC1(SMCCC_ARCH_WORKAROUND_1, 0, 0, 0));
}