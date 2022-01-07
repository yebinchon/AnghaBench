
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {int dummy; } ;
struct name_entry {scalar_t__ mode; } ;
struct merge_list {int dummy; } ;


 scalar_t__ S_ISDIR (scalar_t__) ;
 int add_merge_entry (struct merge_list*) ;
 struct merge_list* link_entry (int,struct traverse_info const*,struct name_entry*,struct merge_list*) ;
 int unresolved_directory (struct traverse_info const*,struct name_entry*) ;

__attribute__((used)) static void unresolved(const struct traverse_info *info, struct name_entry n[3])
{
 struct merge_list *entry = ((void*)0);
 int i;
 unsigned dirmask = 0, mask = 0;

 for (i = 0; i < 3; i++) {
  mask |= (1 << i);




  if (!n[i].mode || S_ISDIR(n[i].mode))
   dirmask |= (1 << i);
 }

 unresolved_directory(info, n);

 if (dirmask == mask)
  return;

 if (n[2].mode && !S_ISDIR(n[2].mode))
  entry = link_entry(3, info, n + 2, entry);
 if (n[1].mode && !S_ISDIR(n[1].mode))
  entry = link_entry(2, info, n + 1, entry);
 if (n[0].mode && !S_ISDIR(n[0].mode))
  entry = link_entry(1, info, n + 0, entry);

 add_merge_entry(entry);
}
