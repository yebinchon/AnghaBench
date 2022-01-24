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
struct l2t_entry {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lport; int /*<<< orphan*/  vlan; int /*<<< orphan*/  lock; int /*<<< orphan*/  dmac; int /*<<< orphan*/  state; int /*<<< orphan*/  iqid; int /*<<< orphan*/ * wrq; } ;
struct l2t_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  nfree; } ;
struct TYPE_3__ {int /*<<< orphan*/  abs_id; } ;
struct TYPE_4__ {TYPE_1__ fwq; int /*<<< orphan*/ * ctrlq; } ;
struct adapter {TYPE_2__ sge; struct l2t_data* l2t; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  L2T_STATE_SWITCHING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct l2t_entry* FUNC5 (struct l2t_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct l2t_entry*,int /*<<< orphan*/ ) ; 

struct l2t_entry *
FUNC12(struct adapter *sc, uint16_t vlan, uint8_t port,
    uint8_t *eth_addr)
{
	struct l2t_data *d = sc->l2t;
	struct l2t_entry *e;
	int rc;

	FUNC9(&d->lock);
	e = FUNC5(d, vlan, port, eth_addr);
	if (e) {
		if (FUNC2(&e->refcnt) == 0) {
			FUNC7(&e->lock);    /* avoid race with t4_l2t_free */
			e->wrq = &sc->sge.ctrlq[0];
			e->iqid = sc->sge.fwq.abs_id;
			e->state = L2T_STATE_SWITCHING;
			e->vlan = vlan;
			e->lport = port;
			FUNC6(e->dmac, eth_addr, ETHER_ADDR_LEN);
			FUNC3(&e->refcnt, 1);
			FUNC4(&d->nfree, 1);
			rc = FUNC11(e, 0);
			FUNC8(&e->lock);
			if (rc != 0)
				e = NULL;
		} else {
			FUNC0(e->vlan == vlan);
			FUNC0(e->lport == port);
			FUNC1(&e->refcnt, 1);
		}
	}
	FUNC10(&d->lock);
	return (e);
}