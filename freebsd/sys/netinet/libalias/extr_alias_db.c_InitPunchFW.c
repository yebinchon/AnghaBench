
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {scalar_t__ fireWallFD; int fireWallBaseNum; int fireWallActiveNum; int fireWallNumNums; scalar_t__ fireWallField; } ;


 int AF_INET ;
 int ClearAllFWHoles (struct libalias*) ;
 int IPPROTO_RAW ;
 int SOCK_RAW ;
 scalar_t__ malloc (int ) ;
 int memset (scalar_t__,int ,int ) ;
 scalar_t__ socket (int ,int ,int ) ;

__attribute__((used)) static void
InitPunchFW(struct libalias *la)
{

 la->fireWallField = malloc(la->fireWallNumNums);
 if (la->fireWallField) {
  memset(la->fireWallField, 0, la->fireWallNumNums);
  if (la->fireWallFD < 0) {
   la->fireWallFD = socket(AF_INET, SOCK_RAW, IPPROTO_RAW);
  }
  ClearAllFWHoles(la);
  la->fireWallActiveNum = la->fireWallBaseNum;
 }
}
