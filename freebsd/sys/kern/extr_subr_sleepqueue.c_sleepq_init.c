
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleepqueue {int sq_free; scalar_t__* sq_blockedcnt; int * sq_blocked; } ;


 int LIST_INIT (int *) ;
 int NR_SLEEPQS ;
 int TAILQ_INIT (int *) ;
 int bzero (void*,int) ;

__attribute__((used)) static int
sleepq_init(void *mem, int size, int flags)
{
 struct sleepqueue *sq;
 int i;

 bzero(mem, size);
 sq = mem;
 for (i = 0; i < NR_SLEEPQS; i++) {
  TAILQ_INIT(&sq->sq_blocked[i]);
  sq->sq_blockedcnt[i] = 0;
 }
 LIST_INIT(&sq->sq_free);
 return (0);
}
