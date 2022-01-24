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
typedef  int uint32_t ;
typedef  int int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNMP_V1 ; 
 int /*<<< orphan*/  SNMP_V2c ; 
 int /*<<< orphan*/  SNMP_V3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 TYPE_1__ snmp_client ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int32_t
FUNC4(char *opt_arg)
{
	uint32_t v;
	int32_t saved_errno;

	FUNC0(opt_arg != NULL);

	saved_errno = errno;
	errno = 0;

	v = FUNC1(opt_arg, NULL, 10);
	if (errno != 0) {
		FUNC2("Error parsing version");
		errno = saved_errno;
		return (-1);
	}

	switch (v) {
		case 1:
			snmp_client.version = SNMP_V1;
			break;
		case 2:
			snmp_client.version = SNMP_V2c;
			break;
		case 3:
			snmp_client.version = SNMP_V3;
			break;
		default:
			FUNC3("Unsupported SNMP version - %u", v);
			errno = saved_errno;
			return (-1);
	}

	errno = saved_errno;
	return (2);
}