
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cache_entry {int name; } ;
struct TYPE_3__ {int quiet; } ;


 int CHECKOUT_ALL ;
 struct cache_entry** active_cache ;
 int active_nr ;
 int cache_name_pos (char const*,int) ;
 int ce_namelen (struct cache_entry*) ;
 size_t ce_stage (struct cache_entry*) ;
 scalar_t__ checkout_entry (struct cache_entry*,TYPE_1__*,int *,int *) ;
 int checkout_stage ;
 int fprintf (int ,char*,...) ;
 int fputc (char,int ) ;
 scalar_t__ memcmp (int ,char const*,int) ;
 TYPE_1__ state ;
 int stderr ;
 int strlen (char const*) ;
 scalar_t__ to_tempfile ;
 int ** topath ;
 int write_tempfile_record (char const*,char const*) ;

__attribute__((used)) static int checkout_file(const char *name, const char *prefix)
{
 int namelen = strlen(name);
 int pos = cache_name_pos(name, namelen);
 int has_same_name = 0;
 int did_checkout = 0;
 int errs = 0;

 if (pos < 0)
  pos = -pos - 1;

 while (pos < active_nr) {
  struct cache_entry *ce = active_cache[pos];
  if (ce_namelen(ce) != namelen ||
      memcmp(ce->name, name, namelen))
   break;
  has_same_name = 1;
  pos++;
  if (ce_stage(ce) != checkout_stage
      && (CHECKOUT_ALL != checkout_stage || !ce_stage(ce)))
   continue;
  did_checkout = 1;
  if (checkout_entry(ce, &state,
       to_tempfile ? topath[ce_stage(ce)] : ((void*)0),
       ((void*)0)) < 0)
   errs++;
 }

 if (did_checkout) {
  if (to_tempfile)
   write_tempfile_record(name, prefix);
  return errs > 0 ? -1 : 0;
 }

 if (!state.quiet) {
  fprintf(stderr, "git checkout-index: %s ", name);
  if (!has_same_name)
   fprintf(stderr, "is not in the cache");
  else if (checkout_stage)
   fprintf(stderr, "does not exist at stage %d",
    checkout_stage);
  else
   fprintf(stderr, "is unmerged");
  fputc('\n', stderr);
 }
 return -1;
}
