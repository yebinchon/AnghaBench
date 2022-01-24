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
struct mkuz_conveyor {int /*<<< orphan*/  results; int /*<<< orphan*/  wrk_queue; } ;
struct mkuz_cfg {scalar_t__ no_zcomp; scalar_t__ en_dedup; TYPE_1__* handler; int /*<<< orphan*/  cbound_blksz; int /*<<< orphan*/  comp_level; } ;
struct TYPE_4__ {int /*<<< orphan*/  blkno; int /*<<< orphan*/  len; } ;
struct mkuz_blk {TYPE_2__ info; int /*<<< orphan*/  data; struct mkuz_conveyor* cvp; struct mkuz_cfg* cfp; } ;
struct cw_args {TYPE_2__ info; int /*<<< orphan*/  data; struct mkuz_conveyor* cvp; struct mkuz_cfg* cfp; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* f_compress ) (void*,struct mkuz_blk*,struct mkuz_blk*) ;void* (* f_init ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 struct mkuz_blk* MKUZ_BLK_EOF ; 
 int /*<<< orphan*/  FUNC0 (struct mkuz_blk*) ; 
 int /*<<< orphan*/  FUNC1 (struct mkuz_blk*) ; 
 struct mkuz_blk* FUNC2 (int /*<<< orphan*/ ) ; 
 struct mkuz_blk* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mkuz_blk*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,struct mkuz_blk*,struct mkuz_blk*) ; 

__attribute__((used)) static void *
FUNC8(void *p)
{
    struct cw_args *cwp;
    struct mkuz_cfg *cfp;
    struct mkuz_blk *oblk, *iblk;
    struct mkuz_conveyor *cvp;
    void *c_ctx;

    cwp = (struct cw_args *)p;
    cfp = cwp->cfp;
    cvp = cwp->cvp;
    FUNC1(cwp);
    c_ctx = cfp->handler->f_init(&cfp->comp_level);
    for (;;) {
        iblk = FUNC3(cvp->wrk_queue);
        if (iblk == MKUZ_BLK_EOF) {
            /* Let other threads to see the EOF block */
            FUNC4(cvp->wrk_queue, iblk);
            break;
        }
        if (cfp->no_zcomp == 0 &&
          FUNC5(iblk->data, '\0', iblk->info.len) != 0) {
            /* All zeroes block */
            oblk = FUNC2(0);
        } else {
            oblk = FUNC2(cfp->cbound_blksz);
            cfp->handler->f_compress(c_ctx, iblk, oblk);
            if (cfp->en_dedup != 0) {
                FUNC0(oblk);
            }
        }
        oblk->info.blkno = iblk->info.blkno;
        FUNC4(cvp->results, oblk);
        FUNC1(iblk);
    }
    return (NULL);
}