
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {scalar_t__ fireWallFD; int fireWallBaseNum; int fireWallNumNums; struct ip_fw* fireWallField; } ;
struct ip_fw {int dummy; } ;


 int IPPROTO_IP ;
 int IP_FW_DEL ;
 int memset (struct ip_fw*,int ,int) ;
 int setsockopt (scalar_t__,int ,int ,int*,int) ;

__attribute__((used)) static void
ClearAllFWHoles(struct libalias *la)
{
 struct ip_fw rule;
 int i;

 if (la->fireWallFD < 0)
  return;

 memset(&rule, 0, sizeof rule);
 for (i = la->fireWallBaseNum; i < la->fireWallBaseNum + la->fireWallNumNums; i++) {
  int r = i;

  while (!setsockopt(la->fireWallFD, IPPROTO_IP, IP_FW_DEL, &r, sizeof r));
 }

 memset(la->fireWallField, 0, la->fireWallNumNums);
}
