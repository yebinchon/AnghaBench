
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {char const* name; int oid; } ;


 int WRITE_TREE_SILENT ;
 scalar_t__ ce_stage (struct cache_entry const*) ;
 int fprintf (int ,char*,...) ;
 char* oid_to_hex (int *) ;
 int stderr ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int verify_cache(struct cache_entry **cache,
   int entries, int flags)
{
 int i, funny;
 int silent = flags & WRITE_TREE_SILENT;


 funny = 0;
 for (i = 0; i < entries; i++) {
  const struct cache_entry *ce = cache[i];
  if (ce_stage(ce)) {
   if (silent)
    return -1;
   if (10 < ++funny) {
    fprintf(stderr, "...\n");
    break;
   }
   fprintf(stderr, "%s: unmerged (%s)\n",
    ce->name, oid_to_hex(&ce->oid));
  }
 }
 if (funny)
  return -1;





 funny = 0;
 for (i = 0; i < entries - 1; i++) {




  const char *this_name = cache[i]->name;
  const char *next_name = cache[i+1]->name;
  int this_len = strlen(this_name);
  if (this_len < strlen(next_name) &&
      strncmp(this_name, next_name, this_len) == 0 &&
      next_name[this_len] == '/') {
   if (10 < ++funny) {
    fprintf(stderr, "...\n");
    break;
   }
   fprintf(stderr, "You have both %s and %s\n",
    this_name, next_name);
  }
 }
 if (funny)
  return -1;
 return 0;
}
