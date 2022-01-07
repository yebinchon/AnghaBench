
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkuz_fifo_queue {scalar_t__ length; scalar_t__ wakeup_len; int mtx; int cvar; struct mkuz_bchain_link* first; struct mkuz_bchain_link* last; } ;
struct mkuz_blk {int dummy; } ;
struct mkuz_bchain_link {struct mkuz_bchain_link* prev; struct mkuz_blk* this; } ;


 struct mkuz_bchain_link* mkuz_safe_zmalloc (int) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void
mkuz_fqueue_enq(struct mkuz_fifo_queue *fqp, struct mkuz_blk *bp)
{
    struct mkuz_bchain_link *ip;

    ip = mkuz_safe_zmalloc(sizeof(struct mkuz_bchain_link));
    ip->this = bp;

    pthread_mutex_lock(&fqp->mtx);
    if (fqp->first != ((void*)0)) {
        fqp->first->prev = ip;
    } else {
        fqp->last = ip;
    }
    fqp->first = ip;
    fqp->length += 1;
    if (fqp->length >= fqp->wakeup_len) {
        pthread_cond_signal(&fqp->cvar);
    }
    pthread_mutex_unlock(&fqp->mtx);
}
