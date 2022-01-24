#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct swdevt {int /*<<< orphan*/ * sw_id; } ;
struct g_consumer {scalar_t__ index; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct g_consumer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sw_dev_mtx ; 
 int /*<<< orphan*/  swapgeom_close_ev ; 

__attribute__((used)) static void
FUNC2(struct g_consumer *cp, struct swdevt *sp)
{

	FUNC1(&sw_dev_mtx, MA_OWNED);
	cp->index--;
	if (cp->index == 0) {
		if (FUNC0(swapgeom_close_ev, cp, M_NOWAIT, NULL) == 0)
			sp->sw_id = NULL;
	}
}