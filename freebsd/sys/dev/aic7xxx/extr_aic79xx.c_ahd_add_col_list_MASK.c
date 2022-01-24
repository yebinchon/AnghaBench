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
typedef  size_t u_int ;
struct scb_tailq {int dummy; } ;
struct scb_list {int dummy; } ;
struct scb {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {struct scb_tailq free_scbs; struct scb_list* free_scb_lists; } ;
struct ahd_softc {TYPE_1__ scb_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  tqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scb*,size_t) ; 
 struct scb* FUNC1 (struct scb_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct scb*,struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scb_list*,struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCB_ON_COL_LIST ; 
 int /*<<< orphan*/  FUNC4 (struct scb_tailq*,struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  collision_links ; 
 TYPE_2__ links ; 

__attribute__((used)) static void
FUNC5(struct ahd_softc *ahd, struct scb *scb, u_int col_idx)
{
	struct	scb_list *free_list;
	struct	scb_tailq *free_tailq;
	struct	scb *first_scb;

	scb->flags |= SCB_ON_COL_LIST;
	FUNC0(scb, col_idx);
	free_list = &ahd->scb_data.free_scb_lists[col_idx];
	free_tailq = &ahd->scb_data.free_scbs;
	first_scb = FUNC1(free_list);
	if (first_scb != NULL) {
		FUNC2(first_scb, scb, collision_links);
	} else {
		FUNC3(free_list, scb, collision_links);
		FUNC4(free_tailq, scb, links.tqe);
	}
}