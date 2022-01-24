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
struct TYPE_3__ {int integer; } ;
struct snmp_value {TYPE_1__ v; int /*<<< orphan*/  var; } ;
struct snmp_context {TYPE_2__* scratch; } ;
struct mibif {int dummy; } ;
struct bridge_port {int status; int /*<<< orphan*/  span_enable; } ;
struct bridge_if {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_4__ {int int1; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
#define  RowStatus_active 133 
#define  RowStatus_createAndGo 132 
#define  RowStatus_createAndWait 131 
#define  RowStatus_destroy 130 
#define  RowStatus_notInService 129 
#define  RowStatus_notReady 128 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_INCONS_VALUE ; 
 int SNMP_ERR_NOERROR ; 
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

	if (FUNC3(&val->var, sub, b_name, &if_idx) < 0)
		return (SNMP_ERR_INCONS_VALUE);

	if ((bif = FUNC0(b_name)) == NULL ||
	    (mif = FUNC4(if_idx)) == NULL)
		return (SNMP_ERR_INCONS_VALUE);

	bp = FUNC2(if_idx, bif);

	switch (val->v.integer) {
	    case RowStatus_active:
		if (bp == NULL)
		    return (SNMP_ERR_INCONS_VALUE);

		if (bp->span_enable == 0)
		    return (SNMP_ERR_INCONS_VALUE);

		ctx->scratch->int1 = bp->status;
		bp->status = RowStatus_active;
		break;

	    case RowStatus_notInService:
		if (bp == NULL || bp->span_enable == 0 ||
		    bp->status == RowStatus_active)
			return (SNMP_ERR_INCONS_VALUE);

		ctx->scratch->int1 = bp->status;
		bp->status = RowStatus_notInService;

	    case RowStatus_notReady:
		/* FALLTHROUGH */
	    case RowStatus_createAndGo:
		return (SNMP_ERR_INCONS_VALUE);

	    case RowStatus_createAndWait:
		if (bp != NULL)
		    return (SNMP_ERR_INCONS_VALUE);

		if ((bp = FUNC1(mif, bif)) == NULL)
			return (SNMP_ERR_GENERR);

		ctx->scratch->int1 = RowStatus_destroy;
		bp->status = RowStatus_notReady;
		break;

	    case RowStatus_destroy:
		if (bp == NULL)
		    return (SNMP_ERR_INCONS_VALUE);

		ctx->scratch->int1 = bp->status;
		bp->status = RowStatus_destroy;
		break;
	}

	return (SNMP_ERR_NOERROR);
}