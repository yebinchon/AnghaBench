
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;
struct notes_tree {int dummy; } ;


 int NOTES_INIT_WRITABLE ;
 int NOTES_PRUNE_DRYRUN ;
 int NOTES_PRUNE_VERBOSE ;
 int N_ (char*) ;
 struct option OPT_END () ;
 struct option OPT__DRY_RUN (int*,int ) ;
 struct option OPT__VERBOSE (int*,int ) ;
 int _ (char*) ;
 int commit_notes (int ,struct notes_tree*,char*) ;
 int error (int ) ;
 int free_notes (struct notes_tree*) ;
 int git_notes_prune_usage ;
 struct notes_tree* init_notes_check (char*,int ) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int prune_notes (struct notes_tree*,int) ;
 int the_repository ;
 int usage_with_options (int ,struct option*) ;

__attribute__((used)) static int prune(int argc, const char **argv, const char *prefix)
{
 struct notes_tree *t;
 int show_only = 0, verbose = 0;
 struct option options[] = {
  OPT__DRY_RUN(&show_only, N_("do not remove, show only")),
  OPT__VERBOSE(&verbose, N_("report pruned notes")),
  OPT_END()
 };

 argc = parse_options(argc, argv, prefix, options, git_notes_prune_usage,
        0);

 if (argc) {
  error(_("too many parameters"));
  usage_with_options(git_notes_prune_usage, options);
 }

 t = init_notes_check("prune", NOTES_INIT_WRITABLE);

 prune_notes(t, (verbose ? NOTES_PRUNE_VERBOSE : 0) |
  (show_only ? NOTES_PRUNE_VERBOSE|NOTES_PRUNE_DRYRUN : 0) );
 if (!show_only)
  commit_notes(the_repository, t,
        "Notes removed by 'git notes prune'");
 free_notes(t);
 return 0;
}
