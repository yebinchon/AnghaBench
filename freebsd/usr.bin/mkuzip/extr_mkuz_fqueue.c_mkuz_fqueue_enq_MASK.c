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
struct mkuz_fifo_queue {scalar_t__ length; scalar_t__ wakeup_len; int /*<<< orphan*/  mtx; int /*<<< orphan*/  cvar; struct mkuz_bchain_link* first; struct mkuz_bchain_link* last; } ;
struct mkuz_blk {int dummy; } ;
struct mkuz_bchain_link {struct mkuz_bchain_link* prev; struct mkuz_blk* this; } ;

/* Variables and functions */
 struct mkuz_bchain_link* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct mkuz_fifo_queue *fqp, struct mkuz_blk *bp)
{
    struct mkuz_bchain_link *ip;

    ip = FUNC0(sizeof(struct mkuz_bchain_link));
    ip->this = bp;

    FUNC2(&fqp->mtx);
    if (fqp->first != NULL) {
        fqp->first->prev = ip;
    } else {
        fqp->last = ip;
    }
    fqp->first = ip;
    fqp->length += 1;
    if (fqp->length >= fqp->wakeup_len) {
        FUNC1(&fqp->cvar);
    }
    FUNC3(&fqp->mtx);
}