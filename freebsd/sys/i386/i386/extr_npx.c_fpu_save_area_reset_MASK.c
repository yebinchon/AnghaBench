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
typedef  union savefpu {int dummy; } savefpu ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,union savefpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_max_ext_state_size ; 
 int /*<<< orphan*/  npx_initialstate ; 

void
FUNC1(union savefpu *fsa)
{

	FUNC0(npx_initialstate, fsa, cpu_max_ext_state_size);
}