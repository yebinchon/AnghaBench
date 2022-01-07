
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {scalar_t__ pack_keep; int pack_local; struct packed_git* next; } ;


 int gc_auto_pack_limit ;
 struct packed_git* get_all_packs (int ) ;
 int the_repository ;

__attribute__((used)) static int too_many_packs(void)
{
 struct packed_git *p;
 int cnt;

 if (gc_auto_pack_limit <= 0)
  return 0;

 for (cnt = 0, p = get_all_packs(the_repository); p; p = p->next) {
  if (!p->pack_local)
   continue;
  if (p->pack_keep)
   continue;




  cnt++;
 }
 return gc_auto_pack_limit < cnt;
}
