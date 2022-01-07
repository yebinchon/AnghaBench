
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object_entry {int preferred_base; } ;


 int nr_result ;
 struct object_entry* packlist_find (int *,struct object_id const*) ;
 int to_pack ;

__attribute__((used)) static int have_duplicate_entry(const struct object_id *oid,
    int exclude)
{
 struct object_entry *entry;

 entry = packlist_find(&to_pack, oid);
 if (!entry)
  return 0;

 if (exclude) {
  if (!entry->preferred_base)
   nr_result--;
  entry->preferred_base = 1;
 }

 return 1;
}
