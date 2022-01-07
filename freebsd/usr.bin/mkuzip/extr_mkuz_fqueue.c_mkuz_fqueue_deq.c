
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkuz_fifo_queue {int length; int mtx; int * first; struct mkuz_bchain_link* last; int cvar; } ;
struct mkuz_blk {int dummy; } ;
struct mkuz_bchain_link {struct mkuz_blk* this; struct mkuz_bchain_link* prev; } ;


 int assert (int) ;
 int free (struct mkuz_bchain_link*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct mkuz_blk *
mkuz_fqueue_deq(struct mkuz_fifo_queue *fqp)
{
    struct mkuz_bchain_link *ip;
    struct mkuz_blk *bp;

    pthread_mutex_lock(&fqp->mtx);
    while (fqp->last == ((void*)0)) {
        pthread_cond_wait(&fqp->cvar, &fqp->mtx);
    }



    ip = fqp->last;
    fqp->last = ip->prev;
    if (fqp->last == ((void*)0)) {



        fqp->first = ((void*)0);
    }
    fqp->length -= 1;
    pthread_mutex_unlock(&fqp->mtx);
    bp = ip->this;
    free(ip);

    return bp;
}
