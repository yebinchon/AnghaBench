
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char const* buf; } ;
struct object_id {int dummy; } ;
struct cache_entry {int ce_flags; int ce_namelen; scalar_t__ ce_mode; int oid; scalar_t__ name; } ;


 int ADD_CACHE_OK_TO_ADD ;
 int ADD_CACHE_OK_TO_REPLACE ;
 int CE_UPDATE ;
 int READ_TREE_RECURSIVE ;
 scalar_t__ S_ISDIR (unsigned int) ;
 struct cache_entry** active_cache ;
 int add_cache_entry (struct cache_entry*,int) ;
 int cache_name_pos (scalar_t__,int) ;
 int ce_intent_to_add (struct cache_entry*) ;
 int create_ce_flags (int ) ;
 scalar_t__ create_ce_mode (unsigned int) ;
 int discard_cache_entry (struct cache_entry*) ;
 struct cache_entry* make_empty_cache_entry (int *,int) ;
 int memcpy (scalar_t__,char const*,int) ;
 int oidcpy (int *,struct object_id const*) ;
 scalar_t__ oideq (int *,int *) ;
 int strlen (char const*) ;
 int the_index ;

__attribute__((used)) static int update_some(const struct object_id *oid, struct strbuf *base,
  const char *pathname, unsigned mode, int stage, void *context)
{
 int len;
 struct cache_entry *ce;
 int pos;

 if (S_ISDIR(mode))
  return READ_TREE_RECURSIVE;

 len = base->len + strlen(pathname);
 ce = make_empty_cache_entry(&the_index, len);
 oidcpy(&ce->oid, oid);
 memcpy(ce->name, base->buf, base->len);
 memcpy(ce->name + base->len, pathname, len - base->len);
 ce->ce_flags = create_ce_flags(0) | CE_UPDATE;
 ce->ce_namelen = len;
 ce->ce_mode = create_ce_mode(mode);






 pos = cache_name_pos(ce->name, ce->ce_namelen);
 if (pos >= 0) {
  struct cache_entry *old = active_cache[pos];
  if (ce->ce_mode == old->ce_mode &&
      !ce_intent_to_add(old) &&
      oideq(&ce->oid, &old->oid)) {
   old->ce_flags |= CE_UPDATE;
   discard_cache_entry(ce);
   return 0;
  }
 }

 add_cache_entry(ce, ADD_CACHE_OK_TO_ADD | ADD_CACHE_OK_TO_REPLACE);
 return 0;
}
