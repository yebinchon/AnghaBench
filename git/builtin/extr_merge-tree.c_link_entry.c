
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {int dummy; } ;
struct name_entry {int oid; int mode; } ;
struct merge_list {char* path; struct merge_list* link; } ;


 struct merge_list* create_entry (unsigned int,int ,int *,char const*) ;
 char* traverse_path (struct traverse_info const*,struct name_entry*) ;

__attribute__((used)) static struct merge_list *link_entry(unsigned stage, const struct traverse_info *info, struct name_entry *n, struct merge_list *entry)
{
 const char *path;
 struct merge_list *link;

 if (!n->mode)
  return entry;
 if (entry)
  path = entry->path;
 else
  path = traverse_path(info, n);
 link = create_entry(stage, n->mode, &n->oid, path);
 link->link = entry;
 return link;
}
