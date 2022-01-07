
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sppp {scalar_t__ pp_phase; } ;
struct TYPE_2__ {int (* Close ) (struct sppp*) ;} ;


 scalar_t__ PHASE_NETWORK ;
 TYPE_1__ lcp ;
 scalar_t__ sppp_ncp_check (struct sppp*) ;
 int stub1 (struct sppp*) ;

__attribute__((used)) static void
sppp_lcp_check_and_close(struct sppp *sp)
{

 if (sp->pp_phase < PHASE_NETWORK)

  return;

 if (sppp_ncp_check(sp))
  return;

 lcp.Close(sp);
}
