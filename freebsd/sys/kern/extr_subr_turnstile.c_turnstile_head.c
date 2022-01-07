
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int * ts_blocked; int ts_lock; } ;
struct thread {int dummy; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 struct thread* TAILQ_FIRST (int *) ;
 int TS_EXCLUSIVE_QUEUE ;
 int TS_SHARED_QUEUE ;
 int mtx_assert (int *,int ) ;

struct thread *
turnstile_head(struct turnstile *ts, int queue)
{






 return (TAILQ_FIRST(&ts->ts_blocked[queue]));
}
