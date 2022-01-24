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
struct mkuz_fifo_queue {int length; int /*<<< orphan*/  mtx; struct mkuz_bchain_link* last; struct mkuz_bchain_link* first; int /*<<< orphan*/  cvar; } ;
struct mkuz_blk {int dummy; } ;
struct mkuz_bchain_link {struct mkuz_blk* this; struct mkuz_bchain_link* prev; } ;
typedef  scalar_t__ (* cmp_cb_t ) (struct mkuz_blk*,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mkuz_bchain_link*) ; 
 int /*<<< orphan*/  FUNC2 (struct mkuz_fifo_queue*,scalar_t__ (*) (struct mkuz_blk*,void*),void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct mkuz_blk *
FUNC6(struct mkuz_fifo_queue *fqp, cmp_cb_t cmp_cb, void *cap)
{
    struct mkuz_bchain_link *ip, *newlast, *newfirst, *mip;
    struct mkuz_blk *bp;

    FUNC4(&fqp->mtx);
    while (fqp->last == NULL || !FUNC2(fqp, cmp_cb, cap)) {
        FUNC3(&fqp->cvar, &fqp->mtx);
    }
    if (cmp_cb(fqp->last->this, cap)) {
        mip = fqp->last;
        fqp->last = mip->prev;
        if (fqp->last == NULL) {
#if defined(MKUZ_DEBUG)
            assert(fqp->length == 1);
#endif
            fqp->first = NULL;
        }
    } else {
#if defined(MKUZ_DEBUG)
        assert(fqp->length > 1);
#endif
        newfirst = newlast = fqp->last;
        mip = NULL;
        for (ip = fqp->last->prev; ip != NULL; ip = ip->prev) {
            if (cmp_cb(ip->this, cap)) {
                mip = ip;
                continue;
            }
            newfirst->prev = ip;
            newfirst = ip;
        }
        newfirst->prev = NULL;
        fqp->first = newfirst;
        fqp->last = newlast;
    }
    fqp->length -= 1;
    FUNC5(&fqp->mtx);
    bp = mip->this;
    FUNC1(mip);

    return bp;
}