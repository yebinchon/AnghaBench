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
struct snmp_value {int dummy; } ;
struct bridge_if {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct bridge_if*,struct snmp_value*) ; 
 struct bridge_if* FUNC1 () ; 
 int /*<<< orphan*/  oid_begemotTopologyChange ; 
 int /*<<< orphan*/  oid_newRoot ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct snmp_value*,...) ; 

__attribute__((used)) static void
FUNC3(struct bridge_if *bif)
{
	struct snmp_value bif_idx;

	if (FUNC1() == bif)
		FUNC2(&oid_newRoot, (struct snmp_value *) NULL);

	if (FUNC0(bif, &bif_idx) == NULL)
		return;

	FUNC2(&oid_begemotTopologyChange,
	    &bif_idx, (struct snmp_value *) NULL);
}