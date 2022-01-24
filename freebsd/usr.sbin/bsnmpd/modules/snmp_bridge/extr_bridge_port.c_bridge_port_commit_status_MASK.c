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
typedef  int /*<<< orphan*/  uint ;
struct snmp_value {int /*<<< orphan*/  var; } ;
struct bridge_port {int status; } ;
struct bridge_if {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int IFNAMSIZ ; 
#define  RowStatus_active 129 
#define  RowStatus_destroy 128 
 int SNMP_ERR_COMMIT_FAILED ; 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_NOERROR ; 
 struct bridge_if* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bridge_port*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bridge_port*,char*) ; 
 struct bridge_port* FUNC3 (int /*<<< orphan*/ ,struct bridge_if*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bridge_port*,struct bridge_if*) ; 

__attribute__((used)) static int
FUNC6(struct snmp_value *val, uint sub)
{
	int32_t if_idx;
	char b_name[IFNAMSIZ];
	struct bridge_if *bif;
	struct bridge_port *bp;

	if (FUNC4(&val->var, sub, b_name, &if_idx) < 0)
		return (SNMP_ERR_GENERR);

	if ((bif = FUNC0(b_name)) == NULL ||
	    (bp = FUNC3(if_idx, bif)) == NULL)
		return (SNMP_ERR_GENERR);

	switch (bp->status) {
		case RowStatus_active:
			if (FUNC1(bp, b_name) < 0)
				return (SNMP_ERR_COMMIT_FAILED);
			break;

		case RowStatus_destroy:
			if (FUNC2(bp, b_name) < 0)
				return (SNMP_ERR_COMMIT_FAILED);
			FUNC5(bp, bif);
			break;
	}

	return (SNMP_ERR_NOERROR);
}