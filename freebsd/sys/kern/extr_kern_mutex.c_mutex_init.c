
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int mtx_lock; } ;
struct TYPE_7__ {TYPE_2__ p_profmtx; TYPE_2__ p_itimmtx; TYPE_2__ p_statmtx; TYPE_2__ p_slock; TYPE_2__ p_mtx; } ;


 TYPE_2__ Giant ;
 int MTX_DEF ;
 int MTX_DUPOK ;
 int MTX_RECURSE ;
 int MTX_SPIN ;
 TYPE_2__ blocked_lock ;
 TYPE_2__ devmtx ;
 int init_turnstiles () ;
 int mtx_init (TYPE_2__*,char*,int *,int) ;
 int mtx_lock (TYPE_2__*) ;
 TYPE_1__ proc0 ;

void
mutex_init(void)
{


 init_turnstiles();




 mtx_init(&Giant, "Giant", ((void*)0), MTX_DEF | MTX_RECURSE);
 mtx_init(&blocked_lock, "blocked lock", ((void*)0), MTX_SPIN);
 blocked_lock.mtx_lock = 0xdeadc0de;
 mtx_init(&proc0.p_mtx, "process lock", ((void*)0), MTX_DEF | MTX_DUPOK);
 mtx_init(&proc0.p_slock, "process slock", ((void*)0), MTX_SPIN);
 mtx_init(&proc0.p_statmtx, "pstatl", ((void*)0), MTX_SPIN);
 mtx_init(&proc0.p_itimmtx, "pitiml", ((void*)0), MTX_SPIN);
 mtx_init(&proc0.p_profmtx, "pprofl", ((void*)0), MTX_SPIN);
 mtx_init(&devmtx, "cdev", ((void*)0), MTX_DEF);
 mtx_lock(&Giant);
}
