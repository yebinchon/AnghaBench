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
struct snmp_table_index {int dummy; } ;
struct snmp_index_entry {int /*<<< orphan*/  index_list; struct snmp_index_entry* string; } ;

/* Variables and functions */
 struct snmp_index_entry* FUNC0 (struct snmp_table_index*) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_table_index*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snmp_index_entry*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct snmp_table_index *headp)
{
	struct snmp_index_entry *t;

	while ((t = FUNC0(headp)) != NULL) {
		FUNC1(headp, link);

		if (t->string)
			FUNC2(t->string);

		FUNC3(&(t->index_list));
		FUNC2(t);
	}
}