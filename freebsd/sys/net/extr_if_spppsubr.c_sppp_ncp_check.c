
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int protos; } ;
struct sppp {TYPE_1__ lcp; } ;
struct TYPE_4__ {int flags; } ;


 int CP_NCP ;
 int IDX_COUNT ;
 TYPE_2__** cps ;

__attribute__((used)) static int
sppp_ncp_check(struct sppp *sp)
{
 int i, mask;

 for (i = 0, mask = 1; i < IDX_COUNT; i++, mask <<= 1)
  if ((sp->lcp.protos & mask) && (cps[i])->flags & CP_NCP)
   return 1;
 return 0;
}
