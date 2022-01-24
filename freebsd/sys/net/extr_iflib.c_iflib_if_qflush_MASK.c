#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* iflib_txq_t ;
typedef  int /*<<< orphan*/  if_t ;
typedef  TYPE_2__* if_ctx_t ;
struct TYPE_9__ {int /*<<< orphan*/  ifc_flags; TYPE_1__* ifc_txqs; } ;
struct TYPE_8__ {int /*<<< orphan*/  ift_br; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFC_QFLUSH ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(if_t ifp)
{
	if_ctx_t ctx = FUNC3(ifp);
	iflib_txq_t txq = ctx->ifc_txqs;
	int i;

	FUNC1(ctx);
	ctx->ifc_flags |= IFC_QFLUSH;
	FUNC2(ctx);
	for (i = 0; i < FUNC0(ctx); i++, txq++)
		while (!(FUNC6(txq->ift_br) || FUNC7(txq->ift_br)))
			FUNC5(txq, 0);
	FUNC1(ctx);
	ctx->ifc_flags &= ~IFC_QFLUSH;
	FUNC2(ctx);

	/*
	 * When ALTQ is enabled, this will also take care of purging the
	 * ALTQ queue(s).
	 */
	FUNC4(ifp);
}