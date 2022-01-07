
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkuz_fifo_queue {int length; int mtx; struct mkuz_bchain_link* last; struct mkuz_bchain_link* first; int cvar; } ;
struct mkuz_blk {int dummy; } ;
struct mkuz_bchain_link {struct mkuz_blk* this; struct mkuz_bchain_link* prev; } ;
typedef scalar_t__ (* cmp_cb_t ) (struct mkuz_blk*,void*) ;


 int assert (int) ;
 int free (struct mkuz_bchain_link*) ;
 int mkuz_fqueue_check (struct mkuz_fifo_queue*,scalar_t__ (*) (struct mkuz_blk*,void*),void*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct mkuz_blk *
mkuz_fqueue_deq_when(struct mkuz_fifo_queue *fqp, cmp_cb_t cmp_cb, void *cap)
{
    struct mkuz_bchain_link *ip, *newlast, *newfirst, *mip;
    struct mkuz_blk *bp;

    pthread_mutex_lock(&fqp->mtx);
    while (fqp->last == ((void*)0) || !mkuz_fqueue_check(fqp, cmp_cb, cap)) {
        pthread_cond_wait(&fqp->cvar, &fqp->mtx);
    }
    if (cmp_cb(fqp->last->this, cap)) {
        mip = fqp->last;
        fqp->last = mip->prev;
        if (fqp->last == ((void*)0)) {



            fqp->first = ((void*)0);
        }
    } else {



        newfirst = newlast = fqp->last;
        mip = ((void*)0);
        for (ip = fqp->last->prev; ip != ((void*)0); ip = ip->prev) {
            if (cmp_cb(ip->this, cap)) {
                mip = ip;
                continue;
            }
            newfirst->prev = ip;
            newfirst = ip;
        }
        newfirst->prev = ((void*)0);
        fqp->first = newfirst;
        fqp->last = newlast;
    }
    fqp->length -= 1;
    pthread_mutex_unlock(&fqp->mtx);
    bp = mip->this;
    free(mip);

    return bp;
}
