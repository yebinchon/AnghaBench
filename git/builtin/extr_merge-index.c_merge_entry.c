
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int ce_mode; int oid; int name; } ;
typedef int ownbuf ;


 int GIT_MAX_HEXSZ ;
 struct cache_entry** active_cache ;
 int active_nr ;
 int ce_stage (struct cache_entry const*) ;
 int die (char*,...) ;
 int err ;
 int exit (int) ;
 int oid_to_hex_r (char*,int *) ;
 scalar_t__ one_shot ;
 char* pgm ;
 int quiet ;
 scalar_t__ run_command_v_opt (char const**,int ) ;
 scalar_t__ strcmp (int ,char const*) ;
 int xsnprintf (char*,int,char*,int ) ;

__attribute__((used)) static int merge_entry(int pos, const char *path)
{
 int found;
 const char *arguments[] = { pgm, "", "", "", path, "", "", "", ((void*)0) };
 char hexbuf[4][GIT_MAX_HEXSZ + 1];
 char ownbuf[4][60];

 if (pos >= active_nr)
  die("git merge-index: %s not in the cache", path);
 found = 0;
 do {
  const struct cache_entry *ce = active_cache[pos];
  int stage = ce_stage(ce);

  if (strcmp(ce->name, path))
   break;
  found++;
  oid_to_hex_r(hexbuf[stage], &ce->oid);
  xsnprintf(ownbuf[stage], sizeof(ownbuf[stage]), "%o", ce->ce_mode);
  arguments[stage] = hexbuf[stage];
  arguments[stage + 4] = ownbuf[stage];
 } while (++pos < active_nr);
 if (!found)
  die("git merge-index: %s not in the cache", path);

 if (run_command_v_opt(arguments, 0)) {
  if (one_shot)
   err++;
  else {
   if (!quiet)
    die("merge program failed");
   exit(1);
  }
 }
 return found;
}
