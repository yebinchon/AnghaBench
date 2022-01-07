
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int index; } ;
struct dir_struct {int dummy; } ;
struct cache_entry {char* ce_mode; int oid; int name; } ;


 scalar_t__ S_ISDIR (char*) ;
 scalar_t__ S_ISGITLINK (char*) ;
 int abbrev ;
 int ce_stage (struct cache_entry const*) ;
 int die (char*) ;
 int find_unique_abbrev (int *,int ) ;
 int fputs (char const*,int ) ;
 char* get_tag (struct cache_entry const*,char const*) ;
 scalar_t__ is_submodule_active (struct repository*,int ) ;
 scalar_t__ match_pathspec (int ,int *,char const*,scalar_t__,scalar_t__,int ,int) ;
 scalar_t__ max_prefix_len ;
 int pathspec ;
 int print_debug (struct cache_entry const*) ;
 int printf (char*,char const*,char*,int,int ) ;
 int ps_matched ;
 scalar_t__ recurse_submodules ;
 int show_stage ;
 int show_submodule (struct repository*,struct dir_struct*,int ) ;
 int stdout ;
 scalar_t__ strlen (char const*) ;
 int write_eolinfo (int ,struct cache_entry const*,char const*) ;
 int write_name (char const*) ;

__attribute__((used)) static void show_ce(struct repository *repo, struct dir_struct *dir,
      const struct cache_entry *ce, const char *fullname,
      const char *tag)
{
 if (max_prefix_len > strlen(fullname))
  die("git ls-files: internal error - cache entry not superset of prefix");

 if (recurse_submodules && S_ISGITLINK(ce->ce_mode) &&
     is_submodule_active(repo, ce->name)) {
  show_submodule(repo, dir, ce->name);
 } else if (match_pathspec(repo->index, &pathspec, fullname, strlen(fullname),
      max_prefix_len, ps_matched,
      S_ISDIR(ce->ce_mode) ||
      S_ISGITLINK(ce->ce_mode))) {
  tag = get_tag(ce, tag);

  if (!show_stage) {
   fputs(tag, stdout);
  } else {
   printf("%s%06o %s %d\t",
          tag,
          ce->ce_mode,
          find_unique_abbrev(&ce->oid, abbrev),
          ce_stage(ce));
  }
  write_eolinfo(repo->index, ce, fullname);
  write_name(fullname);
  print_debug(ce);
 }
}
