
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int deleteAllLinks; } ;


 int AliasSctpTerm (struct libalias*) ;
 int CleanupAliasData (struct libalias*) ;
 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_LOCK_DESTROY (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;
 int LIST_REMOVE (struct libalias*,int ) ;
 int UninitPacketAliasLog (struct libalias*) ;
 int UninitPunchFW (struct libalias*) ;
 int free (struct libalias*) ;
 int instancelist ;

void
LibAliasUninit(struct libalias *la)
{

 LIBALIAS_LOCK(la);



 la->deleteAllLinks = 1;
 CleanupAliasData(la);
 la->deleteAllLinks = 0;
 UninitPacketAliasLog(la);

 UninitPunchFW(la);

 LIST_REMOVE(la, instancelist);
 LIBALIAS_UNLOCK(la);
 LIBALIAS_LOCK_DESTROY(la);
 free(la);
}
