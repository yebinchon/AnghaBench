
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int * ts_blocked; int ts_lock; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 int TAILQ_EMPTY (int *) ;
 int TS_EXCLUSIVE_QUEUE ;
 int TS_SHARED_QUEUE ;
 int mtx_assert (int *,int ) ;

int
turnstile_empty(struct turnstile *ts, int queue)
{






 return (TAILQ_EMPTY(&ts->ts_blocked[queue]));
}
