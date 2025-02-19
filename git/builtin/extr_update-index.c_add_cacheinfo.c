
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct cache_entry {int ce_namelen; int ce_flags; int ce_mode; int name; int oid; } ;


 int ADD_CACHE_OK_TO_ADD ;
 int ADD_CACHE_OK_TO_REPLACE ;
 int CE_VALID ;
 scalar_t__ add_cache_entry (struct cache_entry*,int) ;
 scalar_t__ allow_add ;
 scalar_t__ allow_replace ;
 scalar_t__ assume_unchanged ;
 int create_ce_flags (int) ;
 int create_ce_mode (unsigned int) ;
 int error (char*,char const*) ;
 struct cache_entry* make_empty_cache_entry (int *,int) ;
 int memcpy (int ,char const*,int) ;
 int oidcpy (int *,struct object_id const*) ;
 int report (char*,char const*) ;
 int strlen (char const*) ;
 int the_index ;
 int verify_path (char const*,unsigned int) ;

__attribute__((used)) static int add_cacheinfo(unsigned int mode, const struct object_id *oid,
    const char *path, int stage)
{
 int len, option;
 struct cache_entry *ce;

 if (!verify_path(path, mode))
  return error("Invalid path '%s'", path);

 len = strlen(path);
 ce = make_empty_cache_entry(&the_index, len);

 oidcpy(&ce->oid, oid);
 memcpy(ce->name, path, len);
 ce->ce_flags = create_ce_flags(stage);
 ce->ce_namelen = len;
 ce->ce_mode = create_ce_mode(mode);
 if (assume_unchanged)
  ce->ce_flags |= CE_VALID;
 option = allow_add ? ADD_CACHE_OK_TO_ADD : 0;
 option |= allow_replace ? ADD_CACHE_OK_TO_REPLACE : 0;
 if (add_cache_entry(ce, option))
  return error("%s: cannot add to the index - missing --add option?",
        path);
 report("add '%s'", path);
 return 0;
}
