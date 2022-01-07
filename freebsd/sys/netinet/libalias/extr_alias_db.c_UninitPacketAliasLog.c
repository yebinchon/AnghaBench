
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int packetAliasMode; int * logDesc; } ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int PKT_ALIAS_LOG ;
 int fclose (int *) ;
 int free (int *) ;

__attribute__((used)) static void
UninitPacketAliasLog(struct libalias *la)
{

 LIBALIAS_LOCK_ASSERT(la);
 if (la->logDesc) {



  fclose(la->logDesc);

  la->logDesc = ((void*)0);
 }
 la->packetAliasMode &= ~PKT_ALIAS_LOG;
}
