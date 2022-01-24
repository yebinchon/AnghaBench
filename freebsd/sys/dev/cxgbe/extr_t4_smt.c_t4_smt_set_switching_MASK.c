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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct smt_entry {int /*<<< orphan*/  lock; int /*<<< orphan*/  smac; int /*<<< orphan*/  state; int /*<<< orphan*/  pfvf; int /*<<< orphan*/  iqid; int /*<<< orphan*/ * wrq; int /*<<< orphan*/  refcnt; } ;
struct TYPE_3__ {int /*<<< orphan*/  abs_id; } ;
struct TYPE_4__ {TYPE_1__ fwq; int /*<<< orphan*/ * ctrlq; } ;
struct adapter {TYPE_2__ sge; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  SMT_STATE_SWITCHING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct smt_entry*) ; 

int
FUNC5(struct adapter *sc, struct smt_entry *e, uint16_t pfvf,
								uint8_t *smac)
{
	int rc = 0;

	if (FUNC0(&e->refcnt) == 1) {
		/* Setup the entry for the first time */
		FUNC2(&e->lock);
		e->wrq = &sc->sge.ctrlq[0];
		e->iqid = sc->sge.fwq.abs_id;
		e->pfvf =  pfvf;
		e->state = SMT_STATE_SWITCHING;
		FUNC1(e->smac, smac, ETHER_ADDR_LEN);
		rc = FUNC4(e);
		FUNC3(&e->lock);
	}

	return (rc);
}