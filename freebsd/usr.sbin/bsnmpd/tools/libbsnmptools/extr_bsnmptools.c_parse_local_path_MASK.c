#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opt_arg ;
typedef  int int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  local_path; } ;
typedef  int /*<<< orphan*/  SNMP_LOCAL_PATH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ snmp_client ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

int32_t
FUNC3(char *opt_arg)
{
	FUNC0(opt_arg != NULL);

	if (sizeof(opt_arg) > sizeof(SNMP_LOCAL_PATH)) {
		FUNC2("Filename too long - %s", opt_arg);
		return (-1);
	}

	FUNC1(snmp_client.local_path, opt_arg, sizeof(SNMP_LOCAL_PATH));
	return (2);
}