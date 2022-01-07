
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int exclude_promisor_objects; } ;
struct option {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int dummy; } ;


 int N_ (char*) ;
 struct option const OPT_BOOL (int ,char*,int*,int ) ;
 struct option const OPT_END () ;
 struct option const OPT_EXPIRY_DATE (int ,char*,int *,int ) ;
 struct option const OPT__DRY_RUN (scalar_t__*,int ) ;
 struct option const OPT__VERBOSE (int *,int ) ;
 int PRUNE_PACKED_DRY_RUN ;
 int PRUNE_SHOW_ONLY ;
 int TIME_MAX ;
 int _ (char*) ;
 int add_pending_object (struct rev_info*,struct object*,char*) ;
 int die (char*,...) ;
 int expire ;
 scalar_t__ fetch_if_missing ;
 int for_each_loose_file_in_objdir (char*,int ,int ,int ,struct rev_info*) ;
 int free (char*) ;
 char* get_object_directory () ;
 int get_oid (char const*,struct object_id*) ;
 scalar_t__ is_repository_shallow (int ) ;
 int isatty (int) ;
 char* mkpathdup (char*,char*) ;
 struct object* parse_object_or_die (struct object_id*,char const*) ;
 int parse_options (int,char const**,char const*,struct option const*,int ,int ) ;
 int perform_reachability_traversal (struct rev_info*) ;
 int prune_cruft ;
 int prune_object ;
 int prune_packed_objects (int ) ;
 int prune_shallow (int ) ;
 int prune_subdir ;
 int prune_usage ;
 scalar_t__ read_replace_refs ;
 int ref_paranoia ;
 int remove_temporary_files (char*) ;
 int repo_init_revisions (int ,struct rev_info*,char const*) ;
 scalar_t__ repository_format_precious_objects ;
 scalar_t__ save_commit_buffer ;
 scalar_t__ show_only ;
 int show_progress ;
 int the_repository ;
 int verbose ;

int cmd_prune(int argc, const char **argv, const char *prefix)
{
 struct rev_info revs;
 int exclude_promisor_objects = 0;
 const struct option options[] = {
  OPT__DRY_RUN(&show_only, N_("do not remove, show only")),
  OPT__VERBOSE(&verbose, N_("report pruned objects")),
  OPT_BOOL(0, "progress", &show_progress, N_("show progress")),
  OPT_EXPIRY_DATE(0, "expire", &expire,
    N_("expire objects older than <time>")),
  OPT_BOOL(0, "exclude-promisor-objects", &exclude_promisor_objects,
    N_("limit traversal to objects outside promisor packfiles")),
  OPT_END()
 };
 char *s;

 expire = TIME_MAX;
 save_commit_buffer = 0;
 read_replace_refs = 0;
 ref_paranoia = 1;
 repo_init_revisions(the_repository, &revs, prefix);

 argc = parse_options(argc, argv, prefix, options, prune_usage, 0);

 if (repository_format_precious_objects)
  die(_("cannot prune in a precious-objects repo"));

 while (argc--) {
  struct object_id oid;
  const char *name = *argv++;

  if (!get_oid(name, &oid)) {
   struct object *object = parse_object_or_die(&oid,
            name);
   add_pending_object(&revs, object, "");
  }
  else
   die("unrecognized argument: %s", name);
 }

 if (show_progress == -1)
  show_progress = isatty(2);
 if (exclude_promisor_objects) {
  fetch_if_missing = 0;
  revs.exclude_promisor_objects = 1;
 }

 for_each_loose_file_in_objdir(get_object_directory(), prune_object,
          prune_cruft, prune_subdir, &revs);

 prune_packed_objects(show_only ? PRUNE_PACKED_DRY_RUN : 0);
 remove_temporary_files(get_object_directory());
 s = mkpathdup("%s/pack", get_object_directory());
 remove_temporary_files(s);
 free(s);

 if (is_repository_shallow(the_repository)) {
  perform_reachability_traversal(&revs);
  prune_shallow(show_only ? PRUNE_SHOW_ONLY : 0);
 }

 return 0;
}
