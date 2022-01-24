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
struct snmp_toolinfo {int dummy; } ;
struct fname {int /*<<< orphan*/  name; int /*<<< orphan*/  cut; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int32_t
FUNC5(struct snmp_toolinfo *snmptoolctx, struct fname *file)
{
	int idx;

	FUNC3(&(file->cut));
	FUNC1(file->name);
	if ((idx = FUNC2(snmptoolctx)) < 0)
		FUNC4("Failed to read mappings from file %s", file->name);

	FUNC0();

	return (idx);
}