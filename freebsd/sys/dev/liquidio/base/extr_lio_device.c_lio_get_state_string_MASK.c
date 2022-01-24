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
typedef  size_t int32_t ;

/* Variables and functions */
 size_t LIO_DEV_STATES ; 
 size_t LIO_DEV_STATE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int volatile*) ; 
 char** lio_state_str ; 

char   *
FUNC1(volatile int *state_ptr)
{
	int32_t	istate = (int32_t)FUNC0(state_ptr);

	if (istate > LIO_DEV_STATES || istate < 0)
		return (lio_state_str[LIO_DEV_STATE_INVALID]);

	return (lio_state_str[istate]);
}