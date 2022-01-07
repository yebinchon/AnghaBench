
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkuz_fifo_queue {int wakeup_len; int cvar; int mtx; } ;


 int errx (int,char*) ;
 struct mkuz_fifo_queue* mkuz_safe_zmalloc (int) ;
 scalar_t__ pthread_cond_init (int *,int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;

struct mkuz_fifo_queue *
mkuz_fqueue_ctor(int wakeup_len)
{
    struct mkuz_fifo_queue *fqp;

    fqp = mkuz_safe_zmalloc(sizeof(struct mkuz_fifo_queue));
    fqp->wakeup_len = wakeup_len;
    if (pthread_mutex_init(&fqp->mtx, ((void*)0)) != 0) {
        errx(1, "pthread_mutex_init() failed");
    }
    if (pthread_cond_init(&fqp->cvar, ((void*)0)) != 0) {
        errx(1, "pthread_cond_init() failed");
    }
    return (fqp);
}
