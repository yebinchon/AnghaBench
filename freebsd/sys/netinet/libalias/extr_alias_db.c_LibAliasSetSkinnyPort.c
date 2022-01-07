
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {unsigned int skinnyPort; } ;


 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;

void
LibAliasSetSkinnyPort(struct libalias *la, unsigned int port)
{

 LIBALIAS_LOCK(la);
 la->skinnyPort = port;
 LIBALIAS_UNLOCK(la);
}
