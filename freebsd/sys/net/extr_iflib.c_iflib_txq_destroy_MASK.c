#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* iflib_txq_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_5__ {int /*<<< orphan*/ * ifsd_m; int /*<<< orphan*/ * ifsd_tso_map; int /*<<< orphan*/ * ifsd_map; } ;
struct TYPE_6__ {int ift_size; int /*<<< orphan*/ * ift_ifdi; int /*<<< orphan*/ * ift_tso_buf_tag; int /*<<< orphan*/ * ift_buf_tag; TYPE_1__ ift_sds; int /*<<< orphan*/  ift_mtx; int /*<<< orphan*/ * ift_br; int /*<<< orphan*/  ift_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IFLIB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(iflib_txq_t txq)
{
	if_ctx_t ctx = txq->ift_ctx;

	for (int i = 0; i < txq->ift_size; i++)
		FUNC2(ctx, txq, i);

	if (txq->ift_br != NULL) {
		FUNC3(txq->ift_br);
		txq->ift_br = NULL;
	}

	FUNC4(&txq->ift_mtx);

	if (txq->ift_sds.ifsd_map != NULL) {
		FUNC1(txq->ift_sds.ifsd_map, M_IFLIB);
		txq->ift_sds.ifsd_map = NULL;
	}
	if (txq->ift_sds.ifsd_tso_map != NULL) {
		FUNC1(txq->ift_sds.ifsd_tso_map, M_IFLIB);
		txq->ift_sds.ifsd_tso_map = NULL;
	}
	if (txq->ift_sds.ifsd_m != NULL) {
		FUNC1(txq->ift_sds.ifsd_m, M_IFLIB);
		txq->ift_sds.ifsd_m = NULL;
	}
	if (txq->ift_buf_tag != NULL) {
		FUNC0(txq->ift_buf_tag);
		txq->ift_buf_tag = NULL;
	}
	if (txq->ift_tso_buf_tag != NULL) {
		FUNC0(txq->ift_tso_buf_tag);
		txq->ift_tso_buf_tag = NULL;
	}
	if (txq->ift_ifdi != NULL) {
		FUNC1(txq->ift_ifdi, M_IFLIB);
	}
}