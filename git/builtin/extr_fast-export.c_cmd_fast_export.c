
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_7__ {int recursive; } ;
struct TYPE_8__ {TYPE_3__ flags; struct string_list* format_callback_data; int format_callback; } ;
struct TYPE_6__ {scalar_t__ nr; } ;
struct rev_info {int topo_order; int rewrite_parents; TYPE_4__ diffopt; int cmdline; TYPE_2__ prune_data; int * sources; } ;
struct option {int dummy; } ;
struct object_array {int dummy; } ;
struct commit {int object; } ;
struct TYPE_5__ {int string; } ;


 int N_ (char*) ;
 struct object_array OBJECT_ARRAY_INIT ;
 struct option OPT_BOOL (int ,char*,int*,int ) ;
 struct option OPT_CALLBACK (int ,char*,int *,int ,int ,int ) ;
 struct option OPT_END () ;
 struct option OPT_INTEGER (int ,char*,int *,int ) ;
 struct option OPT_STRING (int ,char*,char**,int ,int ) ;
 struct option OPT_STRING_LIST (int ,char*,struct string_list*,int ,int ) ;
 int PARSE_OPT_KEEP_ARGV0 ;
 int PARSE_OPT_KEEP_UNKNOWN ;
 struct string_list STRING_LIST_INIT_DUP ;
 struct string_list STRING_LIST_INIT_NODUP ;
 char* _ (char*) ;
 int add_object_array (int *,int *,struct object_array*) ;
 int anonymize ;
 int die (char*) ;
 int export_marks (char*) ;
 int extra_refs ;
 int fake_missing_tagger ;
 int fast_export_usage ;
 int full_tree ;
 struct commit* get_revision (struct rev_info*) ;
 int get_tags_and_duplicates (int *) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int handle_commit (struct commit*,struct rev_info*,struct string_list*) ;
 int handle_deletes () ;
 int handle_tags_and_duplicates (int *) ;
 int handle_tail (struct object_array*,struct rev_info*,struct string_list*) ;
 scalar_t__ has_unshown_parent (struct commit*) ;
 int import_marks (char*,int) ;
 int init_revision_sources (int *) ;
 scalar_t__ last_idnum ;
 int mark_tags ;
 int no_data ;
 int parse_opt_reencode_mode ;
 int parse_opt_signed_tag_mode ;
 int parse_opt_tag_of_filtered_mode ;
 int parse_options (int,char const**,char const*,struct option*,int ,int) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int printf (char*) ;
 int progress ;
 int reencode_mode ;
 int reference_excluded_commits ;
 int refspec_append (int *,int ) ;
 int refspec_clear (int *) ;
 int refspecs ;
 int repo_init_revisions (int ,struct rev_info*,char const*) ;
 int revision_sources ;
 int setup_revisions (int,char const**,struct rev_info*,int *) ;
 int show_filemodify ;
 int show_original_ids ;
 int signed_tag_mode ;
 int string_list_clear (struct string_list*,int) ;
 int tag_of_filtered_mode ;
 int tag_refs ;
 int the_repository ;
 int usage_with_options (int ,struct option*) ;
 int use_done_feature ;

int cmd_fast_export(int argc, const char **argv, const char *prefix)
{
 struct rev_info revs;
 struct object_array commits = OBJECT_ARRAY_INIT;
 struct commit *commit;
 char *export_filename = ((void*)0),
      *import_filename = ((void*)0),
      *import_filename_if_exists = ((void*)0);
 uint32_t lastimportid;
 struct string_list refspecs_list = STRING_LIST_INIT_NODUP;
 struct string_list paths_of_changed_objects = STRING_LIST_INIT_DUP;
 struct option options[] = {
  OPT_INTEGER(0, "progress", &progress,
       N_("show progress after <n> objects")),
  OPT_CALLBACK(0, "signed-tags", &signed_tag_mode, N_("mode"),
        N_("select handling of signed tags"),
        parse_opt_signed_tag_mode),
  OPT_CALLBACK(0, "tag-of-filtered-object", &tag_of_filtered_mode, N_("mode"),
        N_("select handling of tags that tag filtered objects"),
        parse_opt_tag_of_filtered_mode),
  OPT_CALLBACK(0, "reencode", &reencode_mode, N_("mode"),
        N_("select handling of commit messages in an alternate encoding"),
        parse_opt_reencode_mode),
  OPT_STRING(0, "export-marks", &export_filename, N_("file"),
        N_("Dump marks to this file")),
  OPT_STRING(0, "import-marks", &import_filename, N_("file"),
        N_("Import marks from this file")),
  OPT_STRING(0, "import-marks-if-exists",
        &import_filename_if_exists,
        N_("file"),
        N_("Import marks from this file if it exists")),
  OPT_BOOL(0, "fake-missing-tagger", &fake_missing_tagger,
    N_("Fake a tagger when tags lack one")),
  OPT_BOOL(0, "full-tree", &full_tree,
    N_("Output full tree for each commit")),
  OPT_BOOL(0, "use-done-feature", &use_done_feature,
        N_("Use the done feature to terminate the stream")),
  OPT_BOOL(0, "no-data", &no_data, N_("Skip output of blob data")),
  OPT_STRING_LIST(0, "refspec", &refspecs_list, N_("refspec"),
        N_("Apply refspec to exported refs")),
  OPT_BOOL(0, "anonymize", &anonymize, N_("anonymize output")),
  OPT_BOOL(0, "reference-excluded-parents",
    &reference_excluded_commits, N_("Reference parents which are not in fast-export stream by object id")),
  OPT_BOOL(0, "show-original-ids", &show_original_ids,
       N_("Show original object ids of blobs/commits")),
  OPT_BOOL(0, "mark-tags", &mark_tags,
       N_("Label tags with mark ids")),

  OPT_END()
 };

 if (argc == 1)
  usage_with_options (fast_export_usage, options);


 git_config(git_default_config, ((void*)0));

 repo_init_revisions(the_repository, &revs, prefix);
 init_revision_sources(&revision_sources);
 revs.topo_order = 1;
 revs.sources = &revision_sources;
 revs.rewrite_parents = 1;
 argc = parse_options(argc, argv, prefix, options, fast_export_usage,
   PARSE_OPT_KEEP_ARGV0 | PARSE_OPT_KEEP_UNKNOWN);
 argc = setup_revisions(argc, argv, &revs, ((void*)0));
 if (argc > 1)
  usage_with_options (fast_export_usage, options);

 if (refspecs_list.nr) {
  int i;

  for (i = 0; i < refspecs_list.nr; i++)
   refspec_append(&refspecs, refspecs_list.items[i].string);

  string_list_clear(&refspecs_list, 1);
 }

 if (use_done_feature)
  printf("feature done\n");

 if (import_filename && import_filename_if_exists)
  die(_("Cannot pass both --import-marks and --import-marks-if-exists"));
 if (import_filename)
  import_marks(import_filename, 0);
 else if (import_filename_if_exists)
  import_marks(import_filename_if_exists, 1);
 lastimportid = last_idnum;

 if (import_filename && revs.prune_data.nr)
  full_tree = 1;

 get_tags_and_duplicates(&revs.cmdline);

 if (prepare_revision_walk(&revs))
  die("revision walk setup failed");
 revs.diffopt.format_callback = show_filemodify;
 revs.diffopt.format_callback_data = &paths_of_changed_objects;
 revs.diffopt.flags.recursive = 1;
 while ((commit = get_revision(&revs))) {
  if (has_unshown_parent(commit)) {
   add_object_array(&commit->object, ((void*)0), &commits);
  }
  else {
   handle_commit(commit, &revs, &paths_of_changed_objects);
   handle_tail(&commits, &revs, &paths_of_changed_objects);
  }
 }

 handle_tags_and_duplicates(&extra_refs);
 handle_tags_and_duplicates(&tag_refs);
 handle_deletes();

 if (export_filename && lastimportid != last_idnum)
  export_marks(export_filename);

 if (use_done_feature)
  printf("done\n");

 refspec_clear(&refspecs);

 return 0;
}
