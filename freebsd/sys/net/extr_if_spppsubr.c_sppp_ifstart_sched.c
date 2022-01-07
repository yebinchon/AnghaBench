
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sppp {int (* if_start ) (int ) ;} ;


 int SP2IFP (struct sppp*) ;
 int stub1 (int ) ;

__attribute__((used)) static void
sppp_ifstart_sched(void *dummy)
{
 struct sppp *sp = dummy;

 sp->if_start(SP2IFP(sp));
}
