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
struct snmp_mappings {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 struct snmp_mappings* FUNC0 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

struct snmp_mappings *
FUNC3(void)
{
	struct snmp_mappings *m;

	if ((m = FUNC0(1, sizeof(struct snmp_mappings))) == NULL) {
		FUNC2(LOG_ERR, "malloc() failed: %s", FUNC1(errno));
		return (NULL);
	}

	return (m);
}