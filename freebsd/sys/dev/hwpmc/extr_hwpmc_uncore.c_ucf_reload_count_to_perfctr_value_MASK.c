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
typedef  scalar_t__ pmc_value_t ;

/* Variables and functions */
 unsigned long long uncore_ucf_width ; 

__attribute__((used)) static pmc_value_t
FUNC0(pmc_value_t rlc)
{
	return (1ULL << uncore_ucf_width) - rlc;
}