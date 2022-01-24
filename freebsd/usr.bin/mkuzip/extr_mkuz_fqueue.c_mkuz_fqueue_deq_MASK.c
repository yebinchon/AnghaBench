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
struct mkuz_fifo_queue {int length; int /*<<< orphan*/  mtx; int /*<<< orphan*/ * first; struct mkuz_bchain_link* last; int /*<<< orphan*/  cvar; } ;
struct mkuz_blk {int dummy; } ;
struct mkuz_bchain_link {struct mkuz_blk* this; struct mkuz_bchain_link* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mkuz_bchain_link*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct mkuz_blk *
FUNC5(struct mkuz_fifo_queue *fqp)
{
    struct mkuz_bchain_link *ip;
    struct mkuz_blk *bp;

    FUNC3(&fqp->mtx);
    while (fqp->last == NULL) {
        FUNC2(&fqp->cvar, &fqp->mtx);
    }
#if defined(MKUZ_DEBUG)
    assert(fqp->length > 0);
#endif
    ip = fqp->last;
    fqp->last = ip->prev;
    if (fqp->last == NULL) {
#if defined(MKUZ_DEBUG)
        assert(fqp->length == 1);
#endif
        fqp->first = NULL;
    }
    fqp->length -= 1;
    FUNC4(&fqp->mtx);
    bp = ip->this;
    FUNC1(ip);

    return bp;
}