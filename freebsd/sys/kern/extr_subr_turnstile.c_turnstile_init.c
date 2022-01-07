
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int ts_lock; int ts_free; int ts_pending; int * ts_blocked; } ;


 int LIST_INIT (int *) ;
 int MTX_RECURSE ;
 int MTX_SPIN ;
 int TAILQ_INIT (int *) ;
 size_t TS_EXCLUSIVE_QUEUE ;
 size_t TS_SHARED_QUEUE ;
 int bzero (void*,int) ;
 int mtx_init (int *,char*,int *,int) ;

__attribute__((used)) static int
turnstile_init(void *mem, int size, int flags)
{
 struct turnstile *ts;

 bzero(mem, size);
 ts = mem;
 TAILQ_INIT(&ts->ts_blocked[TS_EXCLUSIVE_QUEUE]);
 TAILQ_INIT(&ts->ts_blocked[TS_SHARED_QUEUE]);
 TAILQ_INIT(&ts->ts_pending);
 LIST_INIT(&ts->ts_free);
 mtx_init(&ts->ts_lock, "turnstile lock", ((void*)0), MTX_SPIN | MTX_RECURSE);
 return (0);
}
