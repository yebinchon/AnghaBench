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
struct l2t_entry {int idx; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  wr_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct l2t_data {int l2t_size; struct l2t_entry* l2tab; int /*<<< orphan*/  lock; int /*<<< orphan*/  nfree; struct l2t_entry* rover; } ;
struct TYPE_3__ {int size; } ;
struct TYPE_4__ {TYPE_1__ l2t; } ;
struct adapter {struct l2t_data* l2t; TYPE_2__ vres; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  L2T_STATE_UNUSED ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_CXGBE ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct l2t_data* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

int
FUNC5(struct adapter *sc, int flags)
{
	int i, l2t_size;
	struct l2t_data *d;

	l2t_size = sc->vres.l2t.size;
	if (l2t_size < 2)	/* At least 1 bucket for IP and 1 for IPv6 */
		return (EINVAL);

	d = FUNC2(sizeof(*d) + l2t_size * sizeof (struct l2t_entry), M_CXGBE,
	    M_ZERO | flags);
	if (!d)
		return (ENOMEM);

	d->l2t_size = l2t_size;
	d->rover = d->l2tab;
	FUNC1(&d->nfree, l2t_size);
	FUNC4(&d->lock, "L2T");

	for (i = 0; i < l2t_size; i++) {
		struct l2t_entry *e = &d->l2tab[i];

		e->idx = i;
		e->state = L2T_STATE_UNUSED;
		FUNC3(&e->lock, "L2T_E", NULL, MTX_DEF);
		FUNC0(&e->wr_list);
		FUNC1(&e->refcnt, 0);
	}

	sc->l2t = d;

	return (0);
}