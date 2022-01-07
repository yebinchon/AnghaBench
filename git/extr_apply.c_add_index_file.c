
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct cache_entry {int ce_namelen; int oid; int ce_flags; int ce_mode; int name; } ;
struct apply_state {TYPE_1__* repo; int cached; scalar_t__ ita_only; } ;
struct TYPE_2__ {int index; } ;


 int ADD_CACHE_OK_TO_ADD ;
 int CE_INTENT_TO_ADD ;
 scalar_t__ S_ISGITLINK (unsigned int) ;
 int _ (char*) ;
 scalar_t__ add_index_entry (int ,struct cache_entry*,int ) ;
 int blob_type ;
 int create_ce_flags (int ) ;
 int create_ce_mode (unsigned int) ;
 int discard_cache_entry (struct cache_entry*) ;
 int error (int ,char const*) ;
 int error_errno (int ,char const*) ;
 int fill_stat_cache_info (int ,struct cache_entry*,struct stat*) ;
 scalar_t__ get_oid_hex (char const*,int *) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 struct cache_entry* make_empty_cache_entry (int ,int) ;
 int memcpy (int ,char const*,int) ;
 int set_object_name_for_intent_to_add_entry (struct cache_entry*) ;
 int skip_prefix (void*,char*,char const**) ;
 int strlen (char const*) ;
 scalar_t__ write_object_file (void*,unsigned long,int ,int *) ;

__attribute__((used)) static int add_index_file(struct apply_state *state,
     const char *path,
     unsigned mode,
     void *buf,
     unsigned long size)
{
 struct stat st;
 struct cache_entry *ce;
 int namelen = strlen(path);

 ce = make_empty_cache_entry(state->repo->index, namelen);
 memcpy(ce->name, path, namelen);
 ce->ce_mode = create_ce_mode(mode);
 ce->ce_flags = create_ce_flags(0);
 ce->ce_namelen = namelen;
 if (state->ita_only) {
  ce->ce_flags |= CE_INTENT_TO_ADD;
  set_object_name_for_intent_to_add_entry(ce);
 } else if (S_ISGITLINK(mode)) {
  const char *s;

  if (!skip_prefix(buf, "Subproject commit ", &s) ||
      get_oid_hex(s, &ce->oid)) {
   discard_cache_entry(ce);
   return error(_("corrupt patch for submodule %s"), path);
  }
 } else {
  if (!state->cached) {
   if (lstat(path, &st) < 0) {
    discard_cache_entry(ce);
    return error_errno(_("unable to stat newly "
           "created file '%s'"),
         path);
   }
   fill_stat_cache_info(state->repo->index, ce, &st);
  }
  if (write_object_file(buf, size, blob_type, &ce->oid) < 0) {
   discard_cache_entry(ce);
   return error(_("unable to create backing store "
           "for newly created file %s"), path);
  }
 }
 if (add_index_entry(state->repo->index, ce, ADD_CACHE_OK_TO_ADD) < 0) {
  discard_cache_entry(ce);
  return error(_("unable to add cache entry for %s"), path);
 }

 return 0;
}
