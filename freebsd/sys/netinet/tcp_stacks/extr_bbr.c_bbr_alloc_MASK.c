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
struct TYPE_2__ {scalar_t__ rc_free_cnt; int /*<<< orphan*/  rc_free; int /*<<< orphan*/  rc_num_maps_alloced; } ;
struct tcp_bbr {TYPE_1__ r_ctl; } ;
struct bbr_sendmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 struct bbr_sendmap* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bbr_sendmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bbr_to_alloc ; 
 int /*<<< orphan*/  bbr_to_alloc_emerg ; 
 int /*<<< orphan*/  bbr_to_alloc_failed ; 
 int /*<<< orphan*/  bbr_zone ; 
 int /*<<< orphan*/  r_next ; 
 struct bbr_sendmap* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct bbr_sendmap *
FUNC4(struct tcp_bbr *bbr)
{
	struct bbr_sendmap *rsm;

	FUNC0(bbr_to_alloc);
	rsm = FUNC3(bbr_zone, (M_NOWAIT | M_ZERO));
	if (rsm) {
		bbr->r_ctl.rc_num_maps_alloced++;
		return (rsm);
	}
	if (bbr->r_ctl.rc_free_cnt) {
		FUNC0(bbr_to_alloc_emerg);
		rsm = FUNC1(&bbr->r_ctl.rc_free);
		FUNC2(&bbr->r_ctl.rc_free, rsm, r_next);
		bbr->r_ctl.rc_free_cnt--;
		return (rsm);
	}
	FUNC0(bbr_to_alloc_failed);
	return (NULL);
}