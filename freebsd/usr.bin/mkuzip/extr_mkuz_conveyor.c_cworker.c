
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mkuz_conveyor {int results; int wrk_queue; } ;
struct mkuz_cfg {scalar_t__ no_zcomp; scalar_t__ en_dedup; TYPE_1__* handler; int cbound_blksz; int comp_level; } ;
struct TYPE_4__ {int blkno; int len; } ;
struct mkuz_blk {TYPE_2__ info; int data; struct mkuz_conveyor* cvp; struct mkuz_cfg* cfp; } ;
struct cw_args {TYPE_2__ info; int data; struct mkuz_conveyor* cvp; struct mkuz_cfg* cfp; } ;
struct TYPE_3__ {int (* f_compress ) (void*,struct mkuz_blk*,struct mkuz_blk*) ;void* (* f_init ) (int *) ;} ;


 struct mkuz_blk* MKUZ_BLK_EOF ;
 int compute_digest (struct mkuz_blk*) ;
 int free (struct mkuz_blk*) ;
 struct mkuz_blk* mkuz_blk_ctor (int ) ;
 struct mkuz_blk* mkuz_fqueue_deq (int ) ;
 int mkuz_fqueue_enq (int ,struct mkuz_blk*) ;
 scalar_t__ mkuz_memvcmp (int ,char,int ) ;
 void* stub1 (int *) ;
 int stub2 (void*,struct mkuz_blk*,struct mkuz_blk*) ;

__attribute__((used)) static void *
cworker(void *p)
{
    struct cw_args *cwp;
    struct mkuz_cfg *cfp;
    struct mkuz_blk *oblk, *iblk;
    struct mkuz_conveyor *cvp;
    void *c_ctx;

    cwp = (struct cw_args *)p;
    cfp = cwp->cfp;
    cvp = cwp->cvp;
    free(cwp);
    c_ctx = cfp->handler->f_init(&cfp->comp_level);
    for (;;) {
        iblk = mkuz_fqueue_deq(cvp->wrk_queue);
        if (iblk == MKUZ_BLK_EOF) {

            mkuz_fqueue_enq(cvp->wrk_queue, iblk);
            break;
        }
        if (cfp->no_zcomp == 0 &&
          mkuz_memvcmp(iblk->data, '\0', iblk->info.len) != 0) {

            oblk = mkuz_blk_ctor(0);
        } else {
            oblk = mkuz_blk_ctor(cfp->cbound_blksz);
            cfp->handler->f_compress(c_ctx, iblk, oblk);
            if (cfp->en_dedup != 0) {
                compute_digest(oblk);
            }
        }
        oblk->info.blkno = iblk->info.blkno;
        mkuz_fqueue_enq(cvp->results, oblk);
        free(iblk);
    }
    return (((void*)0));
}
