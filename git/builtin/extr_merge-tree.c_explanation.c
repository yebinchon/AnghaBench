
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_list {int stage; struct merge_list* link; } ;



__attribute__((used)) static const char *explanation(struct merge_list *entry)
{
 switch (entry->stage) {
 case 0:
  return "merged";
 case 3:
  return "added in remote";
 case 2:
  if (entry->link)
   return "added in both";
  return "added in local";
 }


 entry = entry->link;
 if (!entry)
  return "removed in both";

 if (entry->link)
  return "changed in both";

 if (entry->stage == 3)
  return "removed in local";
 return "removed in remote";
}
