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
typedef  TYPE_2__* iflib_txq_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/ * bus_dmamap_t ;
struct TYPE_4__ {int /*<<< orphan*/ ** ifsd_tso_map; int /*<<< orphan*/ ** ifsd_map; } ;
struct TYPE_5__ {TYPE_1__ ift_sds; int /*<<< orphan*/  ift_tso_buf_tag; int /*<<< orphan*/  ift_buf_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(if_ctx_t ctx, iflib_txq_t txq, int i)
{
	bus_dmamap_t map;

	if (txq->ift_sds.ifsd_map != NULL) {
		map = txq->ift_sds.ifsd_map[i];
		FUNC1(txq->ift_buf_tag, map, BUS_DMASYNC_POSTWRITE);
		FUNC2(txq->ift_buf_tag, map);
		FUNC0(txq->ift_buf_tag, map);
		txq->ift_sds.ifsd_map[i] = NULL;
	}

	if (txq->ift_sds.ifsd_tso_map != NULL) {
		map = txq->ift_sds.ifsd_tso_map[i];
		FUNC1(txq->ift_tso_buf_tag, map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC2(txq->ift_tso_buf_tag, map);
		FUNC0(txq->ift_tso_buf_tag, map);
		txq->ift_sds.ifsd_tso_map[i] = NULL;
	}
}