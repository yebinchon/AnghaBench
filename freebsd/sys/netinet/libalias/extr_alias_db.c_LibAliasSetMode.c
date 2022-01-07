
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {unsigned int packetAliasMode; } ;


 scalar_t__ ENOMEM ;
 scalar_t__ InitPacketAliasLog (struct libalias*) ;
 int InitPunchFW (struct libalias*) ;
 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;
 unsigned int PKT_ALIAS_LOG ;
 unsigned int PKT_ALIAS_PUNCH_FW ;
 int UninitPacketAliasLog (struct libalias*) ;
 int UninitPunchFW (struct libalias*) ;

unsigned int
LibAliasSetMode(
    struct libalias *la,
    unsigned int flags,
    unsigned int mask

)
{
 int res = -1;

 LIBALIAS_LOCK(la);

 if (flags & mask & PKT_ALIAS_LOG) {

  if (InitPacketAliasLog(la) == ENOMEM)
   goto getout;
 } else

 if (~flags & mask & PKT_ALIAS_LOG) {
  UninitPacketAliasLog(la);
 }


 if (flags & mask & PKT_ALIAS_PUNCH_FW) {
  InitPunchFW(la);
 } else

 if (~flags & mask & PKT_ALIAS_PUNCH_FW) {
  UninitPunchFW(la);
 }



 la->packetAliasMode = (flags & mask) | (la->packetAliasMode & ~mask);
 res = la->packetAliasMode;
getout:
 LIBALIAS_UNLOCK(la);
 return (res);
}
