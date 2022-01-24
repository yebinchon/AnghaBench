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
struct utmpx {scalar_t__ ut_type; } ;

/* Variables and functions */
 scalar_t__ USER_PROCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct utmpx* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int
FUNC3(void)
{
	int nusers = 0;
	struct utmpx *ut;

	FUNC2();
	while ((ut = FUNC1()) != NULL)
		if (ut->ut_type == USER_PROCESS)
			nusers++;
	FUNC0();

	return (nusers);
}