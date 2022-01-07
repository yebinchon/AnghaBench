
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int path; } ;
struct strbuf {char* buf; scalar_t__ len; } ;
struct option {int dummy; } ;
struct object_id {int dummy; } ;
struct notes_tree {int dummy; } ;
struct notes_merge_options {int verbosity; char* local_ref; char* remote_ref; int commit_msg; int strategy; } ;


 int BUG (char*,char*) ;
 int NOTES_INIT_WRITABLE ;
 int NOTES_MERGE_VERBOSITY_DEFAULT ;
 int NOTES_MERGE_WORKTREE ;
 int N_ (char*) ;
 struct option OPT_END () ;
 struct option OPT_GROUP (int ) ;
 struct option OPT_SET_INT_F (int ,char*,int*,int ,int,int ) ;
 struct option OPT_STRING (char,char*,char const**,int ,int ) ;
 struct option OPT__VERBOSITY (int*) ;
 int PARSE_OPT_NONEG ;
 struct strbuf STRBUF_INIT ;
 int UPDATE_REFS_DIE_ON_ERR ;
 char* _ (char*) ;
 scalar_t__ create_symref (char*,char*,int *) ;
 char* default_notes_ref () ;
 int die (char*,char*,...) ;
 int error (char*,...) ;
 int expand_loose_notes_ref (struct strbuf*) ;
 struct worktree* find_shared_symref (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int free_notes (struct notes_tree*) ;
 scalar_t__ git_config_get_notes_strategy (char*,int *) ;
 int git_notes_merge_usage ;
 char* git_path (int ) ;
 struct notes_tree* init_notes_check (char*,int ) ;
 int init_notes_merge_options (int ,struct notes_merge_options*) ;
 int merge_abort (struct notes_merge_options*) ;
 int merge_commit (struct notes_merge_options*) ;
 int notes_merge (struct notes_merge_options*,struct notes_tree*,struct object_id*) ;
 scalar_t__ parse_notes_merge_strategy (char const*,int *) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int skip_prefix (char*,char*,char const**) ;
 int stderr ;
 int strbuf_add (int *,char*,scalar_t__) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;
 int update_ref (char*,char*,struct object_id*,int *,int ,int ) ;
 int usage_with_options (int ,struct option*) ;

__attribute__((used)) static int merge(int argc, const char **argv, const char *prefix)
{
 struct strbuf remote_ref = STRBUF_INIT, msg = STRBUF_INIT;
 struct object_id result_oid;
 struct notes_tree *t;
 struct notes_merge_options o;
 int do_merge = 0, do_commit = 0, do_abort = 0;
 int verbosity = 0, result;
 const char *strategy = ((void*)0);
 struct option options[] = {
  OPT_GROUP(N_("General options")),
  OPT__VERBOSITY(&verbosity),
  OPT_GROUP(N_("Merge options")),
  OPT_STRING('s', "strategy", &strategy, N_("strategy"),
      N_("resolve notes conflicts using the given strategy "
         "(manual/ours/theirs/union/cat_sort_uniq)")),
  OPT_GROUP(N_("Committing unmerged notes")),
  OPT_SET_INT_F(0, "commit", &do_commit,
         N_("finalize notes merge by committing unmerged notes"),
         1, PARSE_OPT_NONEG),
  OPT_GROUP(N_("Aborting notes merge resolution")),
  OPT_SET_INT_F(0, "abort", &do_abort,
         N_("abort notes merge"),
         1, PARSE_OPT_NONEG),
  OPT_END()
 };

 argc = parse_options(argc, argv, prefix, options,
        git_notes_merge_usage, 0);

 if (strategy || do_commit + do_abort == 0)
  do_merge = 1;
 if (do_merge + do_commit + do_abort != 1) {
  error(_("cannot mix --commit, --abort or -s/--strategy"));
  usage_with_options(git_notes_merge_usage, options);
 }

 if (do_merge && argc != 1) {
  error(_("must specify a notes ref to merge"));
  usage_with_options(git_notes_merge_usage, options);
 } else if (!do_merge && argc) {
  error(_("too many parameters"));
  usage_with_options(git_notes_merge_usage, options);
 }

 init_notes_merge_options(the_repository, &o);
 o.verbosity = verbosity + NOTES_MERGE_VERBOSITY_DEFAULT;

 if (do_abort)
  return merge_abort(&o);
 if (do_commit)
  return merge_commit(&o);

 o.local_ref = default_notes_ref();
 strbuf_addstr(&remote_ref, argv[0]);
 expand_loose_notes_ref(&remote_ref);
 o.remote_ref = remote_ref.buf;

 t = init_notes_check("merge", NOTES_INIT_WRITABLE);

 if (strategy) {
  if (parse_notes_merge_strategy(strategy, &o.strategy)) {
   error(_("unknown -s/--strategy: %s"), strategy);
   usage_with_options(git_notes_merge_usage, options);
  }
 } else {
  struct strbuf merge_key = STRBUF_INIT;
  const char *short_ref = ((void*)0);

  if (!skip_prefix(o.local_ref, "refs/notes/", &short_ref))
   BUG("local ref %s is outside of refs/notes/",
       o.local_ref);

  strbuf_addf(&merge_key, "notes.%s.mergeStrategy", short_ref);

  if (git_config_get_notes_strategy(merge_key.buf, &o.strategy))
   git_config_get_notes_strategy("notes.mergeStrategy", &o.strategy);

  strbuf_release(&merge_key);
 }

 strbuf_addf(&msg, "notes: Merged notes from %s into %s",
      remote_ref.buf, default_notes_ref());
 strbuf_add(&(o.commit_msg), msg.buf + 7, msg.len - 7);

 result = notes_merge(&o, t, &result_oid);

 if (result >= 0)

  update_ref(msg.buf, default_notes_ref(), &result_oid, ((void*)0), 0,
      UPDATE_REFS_DIE_ON_ERR);
 else {
  const struct worktree *wt;

  update_ref(msg.buf, "NOTES_MERGE_PARTIAL", &result_oid, ((void*)0),
      0, UPDATE_REFS_DIE_ON_ERR);

  wt = find_shared_symref("NOTES_MERGE_REF", default_notes_ref());
  if (wt)
   die(_("a notes merge into %s is already in-progress at %s"),
       default_notes_ref(), wt->path);
  if (create_symref("NOTES_MERGE_REF", default_notes_ref(), ((void*)0)))
   die(_("failed to store link to current notes ref (%s)"),
       default_notes_ref());
  fprintf(stderr, _("Automatic notes merge failed. Fix conflicts in %s "
      "and commit the result with 'git notes merge --commit', "
      "or abort the merge with 'git notes merge --abort'.\n"),
   git_path(NOTES_MERGE_WORKTREE));
 }

 free_notes(t);
 strbuf_release(&remote_ref);
 strbuf_release(&msg);
 return result < 0;
}
