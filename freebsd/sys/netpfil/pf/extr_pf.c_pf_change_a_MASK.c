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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int /*<<< orphan*/  ao ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

void
FUNC2(void *a, u_int16_t *c, u_int32_t an, u_int8_t u)
{
	u_int32_t	ao;

	FUNC0(&ao, a, sizeof(ao));
	FUNC0(a, &an, sizeof(u_int32_t));
	*c = FUNC1(FUNC1(*c, ao / 65536, an / 65536, u),
	    ao % 65536, an % 65536, u);
}