
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feedertab_entry {int dummy; } ;


 int M_FEEDER ;
 struct feedertab_entry* SLIST_FIRST (int *) ;
 struct feedertab_entry* SLIST_NEXT (struct feedertab_entry*,int ) ;
 int feedertab ;
 int free (struct feedertab_entry*,int ) ;
 int link ;

__attribute__((used)) static void
feeder_unregisterall(void *p)
{
 struct feedertab_entry *fte, *next;

 next = SLIST_FIRST(&feedertab);
 while (next != ((void*)0)) {
  fte = next;
  next = SLIST_NEXT(fte, link);
  free(fte, M_FEEDER);
 }
}
