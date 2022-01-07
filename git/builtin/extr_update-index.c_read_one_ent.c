
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct cache_entry {int ce_namelen; int ce_mode; int ce_flags; int name; int oid; } ;


 unsigned short S_IFDIR ;
 int create_ce_flags (int) ;
 int create_ce_mode (unsigned short) ;
 int error (char*,char const*,char const*) ;
 scalar_t__ get_tree_entry (int ,struct object_id*,char const*,struct object_id*,unsigned short*) ;
 struct cache_entry* make_empty_cache_entry (int *,int) ;
 int memcpy (int ,char const*,int) ;
 int oidcpy (int *,struct object_id*) ;
 int the_index ;
 int the_repository ;

__attribute__((used)) static struct cache_entry *read_one_ent(const char *which,
     struct object_id *ent, const char *path,
     int namelen, int stage)
{
 unsigned short mode;
 struct object_id oid;
 struct cache_entry *ce;

 if (get_tree_entry(the_repository, ent, path, &oid, &mode)) {
  if (which)
   error("%s: not in %s branch.", path, which);
  return ((void*)0);
 }
 if (mode == S_IFDIR) {
  if (which)
   error("%s: not a blob in %s branch.", path, which);
  return ((void*)0);
 }
 ce = make_empty_cache_entry(&the_index, namelen);

 oidcpy(&ce->oid, &oid);
 memcpy(ce->name, path, namelen);
 ce->ce_flags = create_ce_flags(stage);
 ce->ce_namelen = namelen;
 ce->ce_mode = create_ce_mode(mode);
 return ce;
}
