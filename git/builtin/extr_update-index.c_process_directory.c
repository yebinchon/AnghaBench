
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct object_id {int dummy; } ;
struct cache_entry {char* name; int ce_mode; } ;


 scalar_t__ S_ISGITLINK (int ) ;
 struct cache_entry** active_cache ;
 int active_nr ;
 int add_one_path (struct cache_entry const*,char const*,int,struct stat*) ;
 int cache_name_pos (char const*,int) ;
 int error (char*,char const*) ;
 int remove_one_path (char const*) ;
 scalar_t__ resolve_gitlink_ref (char const*,char*,struct object_id*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static int process_directory(const char *path, int len, struct stat *st)
{
 struct object_id oid;
 int pos = cache_name_pos(path, len);


 if (pos >= 0) {
  const struct cache_entry *ce = active_cache[pos];
  if (S_ISGITLINK(ce->ce_mode)) {


   if (resolve_gitlink_ref(path, "HEAD", &oid) < 0)
    return 0;

   return add_one_path(ce, path, len, st);
  }

  return remove_one_path(path);
 }


 pos = -pos-1;
 while (pos < active_nr) {
  const struct cache_entry *ce = active_cache[pos++];

  if (strncmp(ce->name, path, len))
   break;
  if (ce->name[len] > '/')
   break;
  if (ce->name[len] < '/')
   continue;


  return error("%s: is a directory - add individual files instead", path);
 }


 if (!resolve_gitlink_ref(path, "HEAD", &oid))
  return add_one_path(((void*)0), path, len, st);


 return error("%s: is a directory - add files inside instead", path);
}
