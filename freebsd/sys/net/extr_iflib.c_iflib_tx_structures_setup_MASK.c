#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  iflib_txq_t ;
typedef  TYPE_1__* if_ctx_t ;
struct TYPE_4__ {int /*<<< orphan*/  ifc_txqs; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(if_ctx_t ctx)
{
	iflib_txq_t txq = ctx->ifc_txqs;
	int i;

	for (i = 0; i < FUNC0(ctx); i++, txq++)
		FUNC1(txq);

	return (0);
}