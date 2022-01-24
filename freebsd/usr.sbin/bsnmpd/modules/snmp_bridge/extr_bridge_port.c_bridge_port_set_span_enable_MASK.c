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
typedef  int /*<<< orphan*/  uint ;
struct TYPE_4__ {scalar_t__ integer; } ;
struct snmp_value {TYPE_2__ v; int /*<<< orphan*/  var; } ;
struct snmp_context {TYPE_1__* scratch; } ;
struct mibif {int dummy; } ;
struct bridge_port {scalar_t__ status; scalar_t__ span_enable; } ;
struct bridge_if {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {scalar_t__ int1; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 scalar_t__ RowStatus_active ; 
 scalar_t__ RowStatus_destroy ; 
 scalar_t__ RowStatus_notInService ; 
 int SNMP_ERR_BADVALUE ; 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_INCONS_VALUE ; 
 int SNMP_ERR_NOERROR ; 
 scalar_t__ begemotBridgeBaseSpanEnabled_disabled ; 
 scalar_t__ begemotBridgeBaseSpanEnabled_enabled ; 
 struct bridge_if* FUNC0 (char*) ; 
 struct bridge_port* FUNC1 (struct mibif*,struct bridge_if*) ; 
 struct bridge_port* FUNC2 (int /*<<< orphan*/ ,struct bridge_if*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct mibif* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct snmp_context *ctx,
		struct snmp_value *val, uint sub)
{
	int32_t if_idx;
	char b_name[IFNAMSIZ];
	struct bridge_if *bif;
	struct bridge_port *bp;
	struct mibif *mif;

	if (val->v.integer != begemotBridgeBaseSpanEnabled_enabled &&
	    val->v.integer != begemotBridgeBaseSpanEnabled_disabled)
		return (SNMP_ERR_BADVALUE);

	if (FUNC3(&val->var, sub, b_name, &if_idx) < 0)
		return (SNMP_ERR_INCONS_VALUE);

	if ((bif = FUNC0(b_name)) == NULL)
		return (SNMP_ERR_INCONS_VALUE);

	if ((bp = FUNC2(if_idx, bif)) == NULL) {
		if ((mif = FUNC4(if_idx)) == NULL)
			return (SNMP_ERR_INCONS_VALUE);

		if ((bp = FUNC1(mif, bif)) == NULL)
			return (SNMP_ERR_GENERR);

		ctx->scratch->int1 = RowStatus_destroy;
	} else if (bp->status == RowStatus_active) {
		return (SNMP_ERR_INCONS_VALUE);
	} else {
		ctx->scratch->int1 = bp->status;
	}

	bp->span_enable = val->v.integer;
	bp->status = RowStatus_notInService;

	return (SNMP_ERR_NOERROR);
}