
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct dir_entry {int len; int name; } ;


 int die (char*) ;
 int dir_path_match (struct index_state const*,struct dir_entry*,int *,int,int ) ;
 int fputs (char const*,int ) ;
 int max_prefix_len ;
 int pathspec ;
 int ps_matched ;
 int stdout ;
 int write_eolinfo (struct index_state const*,int *,int ) ;
 int write_name (int ) ;

__attribute__((used)) static void show_dir_entry(const struct index_state *istate,
      const char *tag, struct dir_entry *ent)
{
 int len = max_prefix_len;

 if (len > ent->len)
  die("git ls-files: internal error - directory entry not superset of prefix");

 if (!dir_path_match(istate, ent, &pathspec, len, ps_matched))
  return;

 fputs(tag, stdout);
 write_eolinfo(istate, ((void*)0), ent->name);
 write_name(ent->name);
}
