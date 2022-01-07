
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aggent {int dummy; } ;


 scalar_t__ TAILQ_EMPTY (int *) ;
 struct aggent* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct aggent*,int ) ;
 int ag_fiter ;
 int fqueue ;

__attribute__((used)) static void
fqueue_deleteall(void)
{
 struct aggent *agg;

 while (TAILQ_EMPTY(&fqueue) == 0) {
  agg = TAILQ_FIRST(&fqueue);
  TAILQ_REMOVE(&fqueue, agg, ag_fiter);
 }
}
