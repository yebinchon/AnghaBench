
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct libalias {int packetAliasMode; scalar_t__ fireWallFD; int fireWallActiveNum; int fireWallBaseNum; int fireWallNumNums; int fireWallField; } ;
struct ip_fw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* tcp; } ;
struct alias_link {scalar_t__ link_type; TYPE_2__ data; struct libalias* la; } ;
typedef int rulebuf ;
struct TYPE_3__ {int fwhole; } ;


 int GetDestAddress (struct alias_link*) ;
 scalar_t__ GetDestPort (struct alias_link*) ;
 int GetOriginalAddress (struct alias_link*) ;
 scalar_t__ GetOriginalPort (struct alias_link*) ;
 int IPPROTO_IP ;
 int IPPROTO_TCP ;
 int IP_FW_ADD ;
 scalar_t__ LINK_TCP ;
 int O_ACCEPT ;
 int PKT_ALIAS_PUNCH_FW ;
 int err (int,char*) ;
 int fill_rule (int *,int,int,int ,int ,int ,int ,int ,int ) ;
 int fprintf (int ,char*) ;
 int fw_setfield (struct libalias*,int ,int) ;
 scalar_t__ fw_tstfield (struct libalias*,int ,int) ;
 int memset (struct ip_fw*,int ,int) ;
 int ntohs (scalar_t__) ;
 int setsockopt (scalar_t__,int ,int ,int *,int) ;
 int stderr ;

void
PunchFWHole(struct alias_link *lnk)
{
 struct libalias *la;
 int r;
 struct ip_fw rule;
 int fwhole;

 la = lnk->la;


 if (!(la->packetAliasMode & PKT_ALIAS_PUNCH_FW) ||
     la->fireWallFD < 0 ||
     lnk->link_type != LINK_TCP)
  return;

 memset(&rule, 0, sizeof rule);




 for (fwhole = la->fireWallActiveNum;
     fwhole < la->fireWallBaseNum + la->fireWallNumNums &&
     fw_tstfield(la, la->fireWallField, fwhole);
     fwhole++);
 if (fwhole == la->fireWallBaseNum + la->fireWallNumNums) {
  for (fwhole = la->fireWallBaseNum;
      fwhole < la->fireWallActiveNum &&
      fw_tstfield(la, la->fireWallField, fwhole);
      fwhole++);
  if (fwhole == la->fireWallActiveNum) {

   la->fireWallActiveNum = la->fireWallBaseNum;



   return;
  }
 }

 la->fireWallActiveNum = fwhole + 1;







 if (GetOriginalPort(lnk) != 0 && GetDestPort(lnk) != 0) {
  u_int32_t rulebuf[255];
  int i;

  i = fill_rule(rulebuf, sizeof(rulebuf), fwhole,
      O_ACCEPT, IPPROTO_TCP,
      GetOriginalAddress(lnk), ntohs(GetOriginalPort(lnk)),
      GetDestAddress(lnk), ntohs(GetDestPort(lnk)));
  r = setsockopt(la->fireWallFD, IPPROTO_IP, IP_FW_ADD, rulebuf, i);
  if (r)
   err(1, "alias punch inbound(1) setsockopt(IP_FW_ADD)");

  i = fill_rule(rulebuf, sizeof(rulebuf), fwhole,
      O_ACCEPT, IPPROTO_TCP,
      GetDestAddress(lnk), ntohs(GetDestPort(lnk)),
      GetOriginalAddress(lnk), ntohs(GetOriginalPort(lnk)));
  r = setsockopt(la->fireWallFD, IPPROTO_IP, IP_FW_ADD, rulebuf, i);
  if (r)
   err(1, "alias punch inbound(2) setsockopt(IP_FW_ADD)");
 }


 lnk->data.tcp->fwhole = fwhole;
 fw_setfield(la, la->fireWallField, fwhole);
}
