
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {int ccv; int t_inpcb; } ;
struct TYPE_2__ {int (* after_idle ) (int ) ;} ;


 TYPE_1__* CC_ALGO (struct tcpcb*) ;
 int INP_WLOCK_ASSERT (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void inline
cc_after_idle(struct tcpcb *tp)
{
 INP_WLOCK_ASSERT(tp->t_inpcb);

 if (CC_ALGO(tp)->after_idle != ((void*)0))
  CC_ALGO(tp)->after_idle(tp->ccv);
}
