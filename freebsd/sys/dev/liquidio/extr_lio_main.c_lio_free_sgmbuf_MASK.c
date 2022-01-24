#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ifp; } ;
struct octeon_device {TYPE_3__ props; } ;
struct lio_mbuf_free_info {int /*<<< orphan*/  mb; int /*<<< orphan*/  map; struct lio_gather* g; } ;
struct TYPE_4__ {int q_no; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
struct lio_instr_queue {int /*<<< orphan*/  txtag; struct octeon_device* oct_dev; TYPE_2__ txpciq; } ;
struct lio_gather {int /*<<< orphan*/  node; } ;
struct lio {int /*<<< orphan*/ * glist_lock; int /*<<< orphan*/ * ghead; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 struct lio* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct lio_instr_queue *iq, struct lio_mbuf_free_info *finfo)
{
	struct lio_gather	*g;
	struct octeon_device	*oct;
	struct lio		*lio;
	int	iq_no;

	g = finfo->g;
	iq_no = iq->txpciq.s.q_no;
	oct = iq->oct_dev;
	lio = FUNC3(oct->props.ifp);

	FUNC5(&lio->glist_lock[iq_no]);
	FUNC0(&lio->ghead[iq_no], &g->node, entries);
	FUNC6(&lio->glist_lock[iq_no]);

	FUNC1(iq->txtag, finfo->map, BUS_DMASYNC_POSTWRITE);
	FUNC2(iq->txtag, finfo->map);
	FUNC4(finfo->mb);
}