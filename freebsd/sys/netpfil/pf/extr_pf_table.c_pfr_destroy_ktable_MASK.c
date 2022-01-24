#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pfr_ktable {int /*<<< orphan*/  pfrkt_nomatch; int /*<<< orphan*/  pfrkt_match; int /*<<< orphan*/ ** pfrkt_bytes; int /*<<< orphan*/ ** pfrkt_packets; TYPE_1__* pfrkt_rs; struct pfr_ktable* pfrkt_shadow; int /*<<< orphan*/ * pfrkt_ip6; int /*<<< orphan*/ * pfrkt_ip4; } ;
struct pfr_kentryworkq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tables; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PFTABLE ; 
 int PFR_DIR_MAX ; 
 int PFR_OP_TABLE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pfr_ktable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct pfr_ktable*,struct pfr_kentryworkq*) ; 
 int /*<<< orphan*/  FUNC4 (struct pfr_kentryworkq*) ; 
 int /*<<< orphan*/  FUNC5 (struct pfr_ktable*,struct pfr_kentryworkq*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 

__attribute__((used)) static void
FUNC7(struct pfr_ktable *kt, int flushaddr)
{
	struct pfr_kentryworkq	 addrq;
	int			 pfr_dir, pfr_op;

	if (flushaddr) {
		FUNC5(kt, &addrq, NULL, 0);
		FUNC3(kt, &addrq);
		FUNC4(&addrq);
	}
	if (kt->pfrkt_ip4 != NULL)
		FUNC6((void **)&kt->pfrkt_ip4);
	if (kt->pfrkt_ip6 != NULL)
		FUNC6((void **)&kt->pfrkt_ip6);
	if (kt->pfrkt_shadow != NULL)
		FUNC7(kt->pfrkt_shadow, flushaddr);
	if (kt->pfrkt_rs != NULL) {
		kt->pfrkt_rs->tables--;
		FUNC2(kt->pfrkt_rs);
	}
	for (pfr_dir = 0; pfr_dir < PFR_DIR_MAX; pfr_dir ++) {
		for (pfr_op = 0; pfr_op < PFR_OP_TABLE_MAX; pfr_op ++) {
			FUNC0(kt->pfrkt_packets[pfr_dir][pfr_op]);
			FUNC0(kt->pfrkt_bytes[pfr_dir][pfr_op]);
		}
	}
	FUNC0(kt->pfrkt_match);
	FUNC0(kt->pfrkt_nomatch);

	FUNC1(kt, M_PFTABLE);
}