#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  iflib_txq_t ;
typedef  TYPE_1__* if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_8__ {int /*<<< orphan*/  ifc_txqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFLIB_RESTART_BUDGET ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(device_t dev)
{
	if_ctx_t ctx = FUNC5(dev);
	iflib_txq_t txq = ctx->ifc_txqs;

	FUNC0(ctx);
	FUNC2(ctx);
	FUNC6(ctx);
	FUNC1(ctx);
	for (int i = 0; i < FUNC3(ctx); i++, txq++)
		FUNC7(txq, IFLIB_RESTART_BUDGET);

	return (FUNC4(dev));
}