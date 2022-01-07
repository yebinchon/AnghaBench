
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wd_recvtime; int wd_sendtime; int wd_boottime; } ;
struct TYPE_5__ {TYPE_1__ hs_wd; } ;


 TYPE_2__* HS (void const*) ;
 scalar_t__ ISDOWN (TYPE_2__*) ;
 int now ;
 int rflg ;

__attribute__((used)) static int
tcmp(const void *a1, const void *a2)
{
 return (rflg * (
  (ISDOWN(HS(a2)) ? HS(a2)->hs_wd.wd_recvtime - now
      : HS(a2)->hs_wd.wd_sendtime - HS(a2)->hs_wd.wd_boottime)
  -
  (ISDOWN(HS(a1)) ? HS(a1)->hs_wd.wd_recvtime - now
      : HS(a1)->hs_wd.wd_sendtime - HS(a1)->hs_wd.wd_boottime)
 ));
}
