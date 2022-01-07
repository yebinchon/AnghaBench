
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int packetAliasMode; int logDesc; } ;


 int ENOMEM ;
 int LIBALIAS_BUF_SIZE ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int PKT_ALIAS_LOG ;
 int fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int malloc (int ) ;

__attribute__((used)) static int
InitPacketAliasLog(struct libalias *la)
{

 LIBALIAS_LOCK_ASSERT(la);
 if (~la->packetAliasMode & PKT_ALIAS_LOG) {




  if ((la->logDesc = fopen("/var/log/alias.log", "w")))
   fprintf(la->logDesc, "PacketAlias/InitPacketAliasLog: Packet alias logging enabled.\n");

  else
   return (ENOMEM);
  la->packetAliasMode |= PKT_ALIAS_LOG;
 }

 return (1);
}
