
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct cache_entry {int ce_namelen; int oid; int ce_mode; int ce_flags; int name; } ;


 int ADD_CACHE_OK_TO_ADD ;
 int ADD_CACHE_OK_TO_REPLACE ;
 int HASH_WRITE_OBJECT ;
 scalar_t__ add_cache_entry (struct cache_entry*,int) ;
 scalar_t__ allow_add ;
 scalar_t__ allow_replace ;
 int ce_match_stat (struct cache_entry const*,struct stat*,int ) ;
 int ce_mode_from_stat (struct cache_entry const*,int ) ;
 int ce_stage (struct cache_entry const*) ;
 int create_ce_flags (int ) ;
 int discard_cache_entry (struct cache_entry*) ;
 int error (char*,char const*) ;
 int fill_stat_cache_info (int *,struct cache_entry*,struct stat*) ;
 scalar_t__ index_path (int *,int *,char const*,struct stat*,int ) ;
 scalar_t__ info_only ;
 struct cache_entry* make_empty_cache_entry (int *,int) ;
 int memcpy (int ,char const*,int) ;
 int the_index ;

__attribute__((used)) static int add_one_path(const struct cache_entry *old, const char *path, int len, struct stat *st)
{
 int option;
 struct cache_entry *ce;


 if (old && !ce_stage(old) && !ce_match_stat(old, st, 0))
  return 0;

 ce = make_empty_cache_entry(&the_index, len);
 memcpy(ce->name, path, len);
 ce->ce_flags = create_ce_flags(0);
 ce->ce_namelen = len;
 fill_stat_cache_info(&the_index, ce, st);
 ce->ce_mode = ce_mode_from_stat(old, st->st_mode);

 if (index_path(&the_index, &ce->oid, path, st,
         info_only ? 0 : HASH_WRITE_OBJECT)) {
  discard_cache_entry(ce);
  return -1;
 }
 option = allow_add ? ADD_CACHE_OK_TO_ADD : 0;
 option |= allow_replace ? ADD_CACHE_OK_TO_REPLACE : 0;
 if (add_cache_entry(ce, option)) {
  discard_cache_entry(ce);
  return error("%s: cannot add to the index - missing --add option?", path);
 }
 return 0;
}
