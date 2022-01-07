
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sppp {int dummy; } ;
struct TYPE_2__ {int (* Down ) (struct sppp*) ;} ;


 int SPPP_LOCK (struct sppp*) ;
 int SPPP_UNLOCK (struct sppp*) ;
 TYPE_1__ lcp ;
 int stub1 (struct sppp*) ;

__attribute__((used)) static void
sppp_pp_down(struct sppp *sp)
{
 SPPP_LOCK(sp);
 lcp.Down(sp);
 SPPP_UNLOCK(sp);
}
