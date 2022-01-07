
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkuz_conveyor {int * wthreads; void* results; void* wrk_queue; } ;
struct mkuz_cfg {int nworkers; } ;
struct cw_args {struct mkuz_conveyor* cvp; struct mkuz_cfg* cfp; } ;
typedef int pthread_t ;


 int cworker ;
 int errx (int,char*) ;
 void* mkuz_fqueue_ctor (int) ;
 void* mkuz_safe_zmalloc (int) ;
 int pthread_create (int *,int *,int ,void*) ;

struct mkuz_conveyor *
mkuz_conveyor_ctor(struct mkuz_cfg *cfp)
{
    struct mkuz_conveyor *cp;
    struct cw_args *cwp;
    int i, r;

    cp = mkuz_safe_zmalloc(sizeof(struct mkuz_conveyor) +
      (sizeof(pthread_t) * cfp->nworkers));

    cp->wrk_queue = mkuz_fqueue_ctor(1);
    cp->results = mkuz_fqueue_ctor(1);

    for (i = 0; i < cfp->nworkers; i++) {
        cwp = mkuz_safe_zmalloc(sizeof(struct cw_args));
        cwp->cfp = cfp;
        cwp->cvp = cp;
        r = pthread_create(&cp->wthreads[i], ((void*)0), cworker, (void *)cwp);
        if (r != 0) {
            errx(1, "mkuz_conveyor_ctor: pthread_create() failed");

        }
    }
    return (cp);
}
