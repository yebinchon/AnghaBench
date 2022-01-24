#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_3__ {int tv_sec; } ;
struct TYPE_4__ {TYPE_1__ timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 TYPE_2__ snmp_client ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int32_t
FUNC3(char *opt_arg)
{
	int32_t v, saved_errno;

	FUNC0(opt_arg != NULL);

	saved_errno = errno;
	errno = 0;

	v = FUNC1(opt_arg, NULL, 10);
	if (errno != 0) {
		FUNC2("Error parsing timeout value");
		errno = saved_errno;
		return (-1);
	}

	snmp_client.timeout.tv_sec = v;
	errno = saved_errno;
	return (2);
}