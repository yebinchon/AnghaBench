
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct libalias {int fireWallField; int fireWallFD; } ;
struct ip_fw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* tcp; } ;
struct alias_link {scalar_t__ link_type; TYPE_2__ data; struct libalias* la; } ;
struct TYPE_3__ {int fwhole; } ;


 int IPPROTO_IP ;
 int IP_FW_DEL ;
 scalar_t__ LINK_TCP ;
 int fw_clrfield (struct libalias*,int ,int) ;
 int memset (struct ip_fw*,int ,int) ;
 int setsockopt (int ,int ,int ,int*,int) ;

__attribute__((used)) static void
ClearFWHole(struct alias_link *lnk)
{
 struct libalias *la;

 la = lnk->la;
 if (lnk->link_type == LINK_TCP) {
  int fwhole = lnk->data.tcp->fwhole;

  struct ip_fw rule;

  if (fwhole < 0)
   return;

  memset(&rule, 0, sizeof rule);
  while (!setsockopt(la->fireWallFD, IPPROTO_IP, IP_FW_DEL,
      &fwhole, sizeof fwhole));
  fw_clrfield(la, la->fireWallField, fwhole);
  lnk->data.tcp->fwhole = -1;
 }
}
