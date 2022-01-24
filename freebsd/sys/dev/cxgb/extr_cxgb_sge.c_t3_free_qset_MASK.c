#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  ctrl; } ;
struct TYPE_15__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  desc_tag; int /*<<< orphan*/  desc_map; scalar_t__ desc; int /*<<< orphan*/  cntxt_id; } ;
struct sge_qset {TYPE_4__ lro; TYPE_3__ rspq; TYPE_1__* txq; int /*<<< orphan*/  lock; TYPE_11__* fl; } ;
struct TYPE_14__ {int /*<<< orphan*/  reg_lock; } ;
struct TYPE_17__ {TYPE_2__ sge; } ;
typedef  TYPE_5__ adapter_t ;
struct TYPE_13__ {int /*<<< orphan*/ * sdesc; int /*<<< orphan*/  entry_tag; int /*<<< orphan*/  desc_tag; int /*<<< orphan*/  desc_map; scalar_t__ desc; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/ * txq_ifq; int /*<<< orphan*/ * txq_mr; } ;
struct TYPE_12__ {int /*<<< orphan*/ * sdesc; int /*<<< orphan*/  entry_tag; int /*<<< orphan*/  desc_tag; int /*<<< orphan*/  desc_map; scalar_t__ desc; int /*<<< orphan*/  cntxt_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int SGE_RXQ_PER_SET ; 
 int SGE_TXQ_PER_SET ; 
 size_t TXQ_ETH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sge_qset*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sge_qset*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(adapter_t *sc, struct sge_qset *q)
{
	int i;
	
	FUNC12(q, 0, TXQ_ETH);
	if (q->txq[TXQ_ETH].txq_mr != NULL) 
		FUNC1(q->txq[TXQ_ETH].txq_mr, M_DEVBUF);
	if (q->txq[TXQ_ETH].txq_ifq != NULL) {
		FUNC8(q->txq[TXQ_ETH].txq_ifq);
		FUNC6(q->txq[TXQ_ETH].txq_ifq, M_DEVBUF);
	}

	for (i = 0; i < SGE_RXQ_PER_SET; ++i) {
		if (q->fl[i].desc) {
			FUNC9(&sc->sge.reg_lock);
			FUNC13(sc, q->fl[i].cntxt_id);
			FUNC11(&sc->sge.reg_lock);
			FUNC3(q->fl[i].desc_tag, q->fl[i].desc_map);
			FUNC4(q->fl[i].desc_tag, q->fl[i].desc,
					q->fl[i].desc_map);
			FUNC2(q->fl[i].desc_tag);
			FUNC2(q->fl[i].entry_tag);
		}
		if (q->fl[i].sdesc) {
			FUNC7(sc, &q->fl[i]);
			FUNC6(q->fl[i].sdesc, M_DEVBUF);
		}
	}

	FUNC10(&q->lock);
	FUNC0(&q->lock);
	for (i = 0; i < SGE_TXQ_PER_SET; i++) {
		if (q->txq[i].desc) {
			FUNC9(&sc->sge.reg_lock);
			FUNC15(sc, q->txq[i].cntxt_id, 0);
			FUNC11(&sc->sge.reg_lock);
			FUNC3(q->txq[i].desc_tag,
					q->txq[i].desc_map);
			FUNC4(q->txq[i].desc_tag, q->txq[i].desc,
					q->txq[i].desc_map);
			FUNC2(q->txq[i].desc_tag);
			FUNC2(q->txq[i].entry_tag);
		}
		if (q->txq[i].sdesc) {
			FUNC6(q->txq[i].sdesc, M_DEVBUF);
		}
	}

	if (q->rspq.desc) {
		FUNC9(&sc->sge.reg_lock);
		FUNC14(sc, q->rspq.cntxt_id);
		FUNC11(&sc->sge.reg_lock);
		
		FUNC3(q->rspq.desc_tag, q->rspq.desc_map);
		FUNC4(q->rspq.desc_tag, q->rspq.desc,
			        q->rspq.desc_map);
		FUNC2(q->rspq.desc_tag);
		FUNC0(&q->rspq.lock);
	}

#if defined(INET6) || defined(INET)
	tcp_lro_free(&q->lro.ctrl);
#endif

	FUNC5(q, sizeof(*q));
}