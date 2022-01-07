
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct packed_git {unsigned long pack_size; int pack_name; int pack_local; struct packed_git* next; } ;


 struct packed_git* get_all_packs (int ) ;
 int string_list_append (struct string_list*,int ) ;
 int the_repository ;

__attribute__((used)) static struct packed_git *find_base_packs(struct string_list *packs,
       unsigned long limit)
{
 struct packed_git *p, *base = ((void*)0);

 for (p = get_all_packs(the_repository); p; p = p->next) {
  if (!p->pack_local)
   continue;
  if (limit) {
   if (p->pack_size >= limit)
    string_list_append(packs, p->pack_name);
  } else if (!base || base->pack_size < p->pack_size) {
   base = p;
  }
 }

 if (base)
  string_list_append(packs, base->pack_name);

 return base;
}
