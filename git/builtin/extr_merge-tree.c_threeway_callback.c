
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {int dummy; } ;
struct name_entry {int mode; int oid; } ;


 int S_ISDIR (int ) ;
 scalar_t__ both_empty (struct name_entry*,struct name_entry*) ;
 int is_null_oid (int *) ;
 int resolve (struct traverse_info*,struct name_entry*,struct name_entry*) ;
 scalar_t__ same_entry (struct name_entry*,struct name_entry*) ;
 int unresolved (struct traverse_info*,struct name_entry*) ;

__attribute__((used)) static int threeway_callback(int n, unsigned long mask, unsigned long dirmask, struct name_entry *entry, struct traverse_info *info)
{

 if (same_entry(entry+1, entry+2) || both_empty(entry+1, entry+2)) {

  resolve(info, ((void*)0), entry+1);
  return mask;
 }

 if (same_entry(entry+0, entry+1)) {
  if (!is_null_oid(&entry[2].oid) && !S_ISDIR(entry[2].mode)) {

   resolve(info, entry+1, entry+2);
   return mask;
  }





 }

 if (same_entry(entry+0, entry+2) || both_empty(entry+0, entry+2)) {

  resolve(info, ((void*)0), entry+1);
  return mask;
 }

 unresolved(info, entry);
 return mask;
}
