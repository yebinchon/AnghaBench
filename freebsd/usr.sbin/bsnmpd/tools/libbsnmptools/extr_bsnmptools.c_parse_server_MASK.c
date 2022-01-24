#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_3__ {scalar_t__ trans; int /*<<< orphan*/ * chost; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SNMP_DEFAULT_LOCAL ; 
 scalar_t__ SNMP_TRANS_UDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 TYPE_1__ snmp_client ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int32_t
FUNC7(char *opt_arg)
{
	FUNC0(opt_arg != NULL);

	if (FUNC2(&snmp_client, opt_arg) < 0)
		return (-1);

	if (snmp_client.trans > SNMP_TRANS_UDP && snmp_client.chost == NULL) {
		if ((snmp_client.chost = FUNC1(FUNC5(SNMP_DEFAULT_LOCAL) + 1))
		    == NULL) {
			FUNC6(LOG_ERR, "malloc() failed: %s", FUNC4(errno));
			return (-1);
		}
		FUNC3(snmp_client.chost, SNMP_DEFAULT_LOCAL);
	}

	return (2);
}