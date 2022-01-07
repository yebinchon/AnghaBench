
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int fireWallFD; int packetAliasMode; int * fireWallField; } ;


 int ClearAllFWHoles (struct libalias*) ;
 int PKT_ALIAS_PUNCH_FW ;
 int close (int) ;
 int free (int *) ;

__attribute__((used)) static void
UninitPunchFW(struct libalias *la)
{

 ClearAllFWHoles(la);
 if (la->fireWallFD >= 0)
  close(la->fireWallFD);
 la->fireWallFD = -1;
 if (la->fireWallField)
  free(la->fireWallField);
 la->fireWallField = ((void*)0);
 la->packetAliasMode &= ~PKT_ALIAS_PUNCH_FW;
}
