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
typedef  int /*<<< orphan*/  uint ;
struct snmp_value {int /*<<< orphan*/  var; } ;
struct snmp_context {TYPE_1__* scratch; } ;
struct bridge_port {scalar_t__ status; } ;
struct bridge_if {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {scalar_t__ int1; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 scalar_t__ RowStatus_destroy ; 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_NOERROR ; 
 struct bridge_if* FUNC0 (char*) ; 
 struct bridge_port* FUNC1 (int /*<<< orphan*/ ,struct bridge_if*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_port*,struct bridge_if*) ; 

__attribute__((used)) static int
FUNC4(struct snmp_context *ctx,
	struct snmp_value *val, uint sub)
{
	int32_t if_idx;
	char b_name[IFNAMSIZ];
	struct bridge_if *bif;
	struct bridge_port *bp;

	if (FUNC2(&val->var, sub, b_name, &if_idx) < 0)
		return (SNMP_ERR_GENERR);

	if ((bif = FUNC0(b_name)) == NULL ||
	    (bp = FUNC1(if_idx, bif)) == NULL)
		return (SNMP_ERR_GENERR);

	if (ctx->scratch->int1 == RowStatus_destroy)
		FUNC3(bp, bif);
	else
		bp->status = ctx->scratch->int1;

	return (SNMP_ERR_NOERROR);
}