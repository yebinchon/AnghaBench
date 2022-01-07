
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {scalar_t__ cleanupIndex; int * linkTableOut; } ;
struct alias_link {int dummy; } ;


 int DeleteLink (struct alias_link*) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LINK_TABLE_OUT_SIZE ;
 struct alias_link* LIST_FIRST (int *) ;
 struct alias_link* LIST_NEXT (struct alias_link*,int ) ;
 int list_out ;

__attribute__((used)) static void
CleanupAliasData(struct libalias *la)
{
 struct alias_link *lnk;
 int i;

 LIBALIAS_LOCK_ASSERT(la);
 for (i = 0; i < LINK_TABLE_OUT_SIZE; i++) {
  lnk = LIST_FIRST(&la->linkTableOut[i]);
  while (lnk != ((void*)0)) {
   struct alias_link *link_next = LIST_NEXT(lnk, list_out);
   DeleteLink(lnk);
   lnk = link_next;
  }
 }

 la->cleanupIndex = 0;
}
