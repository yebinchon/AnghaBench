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
typedef  scalar_t__ uint32_t ;
struct utmpx {scalar_t__ ut_type; } ;

/* Variables and functions */
 int SNMP_ERR_NOERROR ; 
 scalar_t__ USER_PROCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct utmpx* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int
FUNC3(uint32_t *nu)
{
	struct utmpx *utmp;

	FUNC2();
	*nu = 0;
	while ((utmp = FUNC1()) != NULL) {
		if (utmp->ut_type == USER_PROCESS)
			(*nu)++;
	}
	FUNC0();

	return (SNMP_ERR_NOERROR);
}