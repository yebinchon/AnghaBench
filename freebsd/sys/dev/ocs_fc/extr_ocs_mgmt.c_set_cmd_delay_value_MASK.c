#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ delay_value_msec; int /*<<< orphan*/  err_injection; } ;
typedef  TYPE_1__ ocs_t ;

/* Variables and functions */
 int /*<<< orphan*/  INJECT_DELAY_CMD ; 
 int /*<<< orphan*/  NO_ERR_INJECT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*,char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(ocs_t *ocs, char *name, char *value)
{
	ocs->delay_value_msec = FUNC1(value, NULL, 0);
	ocs->err_injection = (ocs->delay_value_msec == 0 ? NO_ERR_INJECT : INJECT_DELAY_CMD);
	FUNC0(ocs, "mgmt set: %s %s\n", name, value);
	return 0;
}