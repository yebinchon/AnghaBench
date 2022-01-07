
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct packed_git {int pack_keep_in_core; int pack_local; int pack_name; struct packed_git* next; } ;
struct TYPE_2__ {int string; } ;


 char* basename (int ) ;
 int fspathcmp (char const*,int ) ;
 struct packed_git* get_all_packs (int ) ;
 int ignore_packed_keep_in_core ;
 int the_repository ;

__attribute__((used)) static void add_extra_kept_packs(const struct string_list *names)
{
 struct packed_git *p;

 if (!names->nr)
  return;

 for (p = get_all_packs(the_repository); p; p = p->next) {
  const char *name = basename(p->pack_name);
  int i;

  if (!p->pack_local)
   continue;

  for (i = 0; i < names->nr; i++)
   if (!fspathcmp(name, names->items[i].string))
    break;

  if (i < names->nr) {
   p->pack_keep_in_core = 1;
   ignore_packed_keep_in_core = 1;
   continue;
  }
 }
}
