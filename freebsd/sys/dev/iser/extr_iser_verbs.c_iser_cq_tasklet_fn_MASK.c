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
struct iser_comp {struct ib_wc* wcs; struct ib_cq* cq; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_wc*) ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int FUNC1 (struct ib_cq*,int /*<<< orphan*/ ,struct ib_wc* const) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_cq*,int /*<<< orphan*/ ) ; 
 int iser_cq_poll_limit ; 
 int /*<<< orphan*/  FUNC3 (struct ib_wc*) ; 

__attribute__((used)) static void
FUNC4(void *data, int pending)
{
	struct iser_comp *comp = (struct iser_comp *)data;
	struct ib_cq *cq = comp->cq;
	struct ib_wc *const wcs = comp->wcs;
	int completed = 0;
	int i;
	int n;

	while ((n = FUNC1(cq, FUNC0(comp->wcs), wcs)) > 0) {
		for (i = 0; i < n; i++)
			FUNC3(&wcs[i]);

		completed += n;
		if (completed >= iser_cq_poll_limit)
			break;
	}

	/*
	 * It is assumed here that arming CQ only once its empty
	 * would not cause interrupts to be missed.
	 */
	FUNC2(cq, IB_CQ_NEXT_COMP);
}