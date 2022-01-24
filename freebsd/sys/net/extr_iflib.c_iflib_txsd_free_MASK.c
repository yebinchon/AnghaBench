#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
typedef  TYPE_2__* iflib_txq_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_4__ {int /*<<< orphan*/ * ifsd_tso_map; int /*<<< orphan*/ * ifsd_map; struct mbuf** ifsd_m; } ;
struct TYPE_5__ {TYPE_1__ ift_sds; int /*<<< orphan*/  ift_tso_buf_tag; int /*<<< orphan*/  ift_buf_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  tx_frees ; 

__attribute__((used)) static void
FUNC4(if_ctx_t ctx, iflib_txq_t txq, int i)
{
	struct mbuf **mp;

	mp = &txq->ift_sds.ifsd_m[i];
	if (*mp == NULL)
		return;

	if (txq->ift_sds.ifsd_map != NULL) {
		FUNC1(txq->ift_buf_tag,
		    txq->ift_sds.ifsd_map[i], BUS_DMASYNC_POSTWRITE);
		FUNC2(txq->ift_buf_tag, txq->ift_sds.ifsd_map[i]);
	}
	if (txq->ift_sds.ifsd_tso_map != NULL) {
		FUNC1(txq->ift_tso_buf_tag,
		    txq->ift_sds.ifsd_tso_map[i], BUS_DMASYNC_POSTWRITE);
		FUNC2(txq->ift_tso_buf_tag,
		    txq->ift_sds.ifsd_tso_map[i]);
	}
	FUNC3(*mp);
	FUNC0(tx_frees);
	*mp = NULL;
}