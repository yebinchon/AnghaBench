
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct string_list {int nr; } ;
struct stat {int st_mode; } ;
struct object_id {int dummy; } ;
struct cache_entry {scalar_t__ ce_mode; int oid; int name; } ;
struct TYPE_4__ {int nr; TYPE_1__* entry; } ;
struct TYPE_3__ {char* name; } ;


 int Q_ (char*,char*,int ) ;
 struct string_list STRING_LIST_INIT_NODUP ;
 int SUBMODULE_REMOVAL_DIE_ON_ERROR ;
 int SUBMODULE_REMOVAL_IGNORE_IGNORED_UNTRACKED ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISGITLINK (scalar_t__) ;
 int _ (char*) ;
 struct cache_entry** active_cache ;
 scalar_t__ bad_to_remove_submodule (int ,int) ;
 int cache_name_pos (char const*,int ) ;
 int ce_intent_to_add (struct cache_entry const*) ;
 scalar_t__ ce_match_stat (struct cache_entry const*,struct stat*,int ) ;
 scalar_t__ create_ce_mode (unsigned short) ;
 int errno ;
 int get_ours_cache_pos (char const*,int) ;
 scalar_t__ get_tree_entry (int ,struct object_id*,char const*,struct object_id*,unsigned short*) ;
 scalar_t__ is_empty_dir (char const*) ;
 int is_missing_file_error (int ) ;
 int is_null_oid (struct object_id*) ;
 TYPE_2__ list ;
 scalar_t__ lstat (int ,struct stat*) ;
 int oideq (int *,struct object_id*) ;
 int print_error_files (struct string_list*,int ,int ,int*) ;
 int string_list_append (struct string_list*,char const*) ;
 int string_list_clear (struct string_list*,int ) ;
 int strlen (char const*) ;
 int the_repository ;
 int warning_errno (int ,int ) ;

__attribute__((used)) static int check_local_mod(struct object_id *head, int index_only)
{







 int i, no_head;
 int errs = 0;
 struct string_list files_staged = STRING_LIST_INIT_NODUP;
 struct string_list files_cached = STRING_LIST_INIT_NODUP;
 struct string_list files_local = STRING_LIST_INIT_NODUP;

 no_head = is_null_oid(head);
 for (i = 0; i < list.nr; i++) {
  struct stat st;
  int pos;
  const struct cache_entry *ce;
  const char *name = list.entry[i].name;
  struct object_id oid;
  unsigned short mode;
  int local_changes = 0;
  int staged_changes = 0;

  pos = cache_name_pos(name, strlen(name));
  if (pos < 0) {




   pos = get_ours_cache_pos(name, pos);
   if (pos < 0)
    continue;

   if (!S_ISGITLINK(active_cache[pos]->ce_mode) ||
       is_empty_dir(name))
    continue;
  }
  ce = active_cache[pos];

  if (lstat(ce->name, &st) < 0) {
   if (!is_missing_file_error(errno))
    warning_errno(_("failed to stat '%s'"), ce->name);

   continue;
  }
  else if (S_ISDIR(st.st_mode)) {





   if (!S_ISGITLINK(ce->ce_mode))
    continue;
  }
  if (ce_match_stat(ce, &st, 0) ||
      (S_ISGITLINK(ce->ce_mode) &&
       bad_to_remove_submodule(ce->name,
    SUBMODULE_REMOVAL_DIE_ON_ERROR |
    SUBMODULE_REMOVAL_IGNORE_IGNORED_UNTRACKED)))
   local_changes = 1;







  if (no_head
       || get_tree_entry(the_repository, head, name, &oid, &mode)
       || ce->ce_mode != create_ce_mode(mode)
       || !oideq(&ce->oid, &oid))
   staged_changes = 1;
  if (local_changes && staged_changes) {
   if (!index_only || !ce_intent_to_add(ce))
    string_list_append(&files_staged, name);
  }
  else if (!index_only) {
   if (staged_changes)
    string_list_append(&files_cached, name);
   if (local_changes)
    string_list_append(&files_local, name);
  }
 }
 print_error_files(&files_staged,
     Q_("the following file has staged content different "
        "from both the\nfile and the HEAD:",
        "the following files have staged content different"
        " from both the\nfile and the HEAD:",
        files_staged.nr),
     _("\n(use -f to force removal)"),
     &errs);
 string_list_clear(&files_staged, 0);
 print_error_files(&files_cached,
     Q_("the following file has changes "
        "staged in the index:",
        "the following files have changes "
        "staged in the index:", files_cached.nr),
     _("\n(use --cached to keep the file,"
       " or -f to force removal)"),
     &errs);
 string_list_clear(&files_cached, 0);

 print_error_files(&files_local,
     Q_("the following file has local modifications:",
        "the following files have local modifications:",
        files_local.nr),
     _("\n(use --cached to keep the file,"
       " or -f to force removal)"),
     &errs);
 string_list_clear(&files_local, 0);

 return errs;
}
