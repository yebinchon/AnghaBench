
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {char* member_2; int* member_3; int member_6; int member_8; int * member_7; int member_5; int * member_4; int member_1; int member_0; } ;
struct object_id {int dummy; } ;
struct object_array {int nr; TYPE_1__* objects; } ;
struct object {scalar_t__ type; } ;
struct name_ref_data {int name_only; int tags_only; int exclude_filters; int ref_filters; int member_3; int member_2; int member_1; int member_0; } ;
struct commit {scalar_t__ date; } ;
typedef int buffer ;
struct TYPE_2__ {int * name; struct object* item; } ;


 scalar_t__ CUTOFF_DATE_SLOP ;
 int N_ (char*) ;
 struct object_array OBJECT_ARRAY_INIT ;
 scalar_t__ OBJ_COMMIT ;
 int OPTION_SET_INT ;
 struct option OPT_BOOL (int ,char*,int*,int ) ;
 struct option OPT_END () ;
 struct option OPT_GROUP (char*) ;
 struct option OPT_STRING_LIST (int ,char*,int *,int ,int ) ;
 int PARSE_OPT_HIDDEN ;
 int PARSE_OPT_NOARG ;
 int STRING_LIST_INIT_NODUP ;
 scalar_t__ TIME_MIN ;
 int UNLEAK (struct object_array) ;
 int add_object_array (struct object*,char const*,struct object_array*) ;
 scalar_t__ cutoff ;
 struct object* deref_tag (int ,struct object*,char const*,int ) ;
 int error (char*) ;
 int feof (int ) ;
 char* fgets (char*,int,int ) ;
 int for_each_ref (int ,struct name_ref_data*) ;
 int fprintf (int ,char*,char const*) ;
 struct object* get_indexed_object (int) ;
 int get_max_object_index () ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int init_commit_rev_name (int *) ;
 int name_ref ;
 int name_rev_line (char*,struct name_ref_data*) ;
 int name_rev_usage ;
 struct object* parse_object (int ,struct object_id*) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int rev_names ;
 int show_name (struct object*,int *,int,int,int) ;
 int stderr ;
 int stdin ;
 int the_repository ;
 int usage_with_options (int ,struct option*) ;

int cmd_name_rev(int argc, const char **argv, const char *prefix)
{
 struct object_array revs = OBJECT_ARRAY_INIT;
 int all = 0, transform_stdin = 0, allow_undefined = 1, always = 0, peel_tag = 0;
 struct name_ref_data data = { 0, 0, STRING_LIST_INIT_NODUP, STRING_LIST_INIT_NODUP };
 struct option opts[] = {
  OPT_BOOL(0, "name-only", &data.name_only, N_("print only names (no SHA-1)")),
  OPT_BOOL(0, "tags", &data.tags_only, N_("only use tags to name the commits")),
  OPT_STRING_LIST(0, "refs", &data.ref_filters, N_("pattern"),
       N_("only use refs matching <pattern>")),
  OPT_STRING_LIST(0, "exclude", &data.exclude_filters, N_("pattern"),
       N_("ignore refs matching <pattern>")),
  OPT_GROUP(""),
  OPT_BOOL(0, "all", &all, N_("list all commits reachable from all refs")),
  OPT_BOOL(0, "stdin", &transform_stdin, N_("read from stdin")),
  OPT_BOOL(0, "undefined", &allow_undefined, N_("allow to print `undefined` names (default)")),
  OPT_BOOL(0, "always", &always,
      N_("show abbreviated commit object as fallback")),
  {

   OPTION_SET_INT, 0, "peel-tag", &peel_tag, ((void*)0),
   N_("dereference tags in the input (internal use)"),
   PARSE_OPT_NOARG | PARSE_OPT_HIDDEN, ((void*)0), 1,
  },
  OPT_END(),
 };

 init_commit_rev_name(&rev_names);
 git_config(git_default_config, ((void*)0));
 argc = parse_options(argc, argv, prefix, opts, name_rev_usage, 0);
 if (all + transform_stdin + !!argc > 1) {
  error("Specify either a list, or --all, not both!");
  usage_with_options(name_rev_usage, opts);
 }
 if (all || transform_stdin)
  cutoff = 0;

 for (; argc; argc--, argv++) {
  struct object_id oid;
  struct object *object;
  struct commit *commit;

  if (get_oid(*argv, &oid)) {
   fprintf(stderr, "Could not get sha1 for %s. Skipping.\n",
     *argv);
   continue;
  }

  commit = ((void*)0);
  object = parse_object(the_repository, &oid);
  if (object) {
   struct object *peeled = deref_tag(the_repository,
         object, *argv, 0);
   if (peeled && peeled->type == OBJ_COMMIT)
    commit = (struct commit *)peeled;
  }

  if (!object) {
   fprintf(stderr, "Could not get object for %s. Skipping.\n",
     *argv);
   continue;
  }

  if (commit) {
   if (cutoff > commit->date)
    cutoff = commit->date;
  }

  if (peel_tag) {
   if (!commit) {
    fprintf(stderr, "Could not get commit for %s. Skipping.\n",
     *argv);
    continue;
   }
   object = (struct object *)commit;
  }
  add_object_array(object, *argv, &revs);
 }

 if (cutoff) {

  if (cutoff > TIME_MIN + CUTOFF_DATE_SLOP)
   cutoff = cutoff - CUTOFF_DATE_SLOP;
  else
   cutoff = TIME_MIN;
 }
 for_each_ref(name_ref, &data);

 if (transform_stdin) {
  char buffer[2048];

  while (!feof(stdin)) {
   char *p = fgets(buffer, sizeof(buffer), stdin);
   if (!p)
    break;
   name_rev_line(p, &data);
  }
 } else if (all) {
  int i, max;

  max = get_max_object_index();
  for (i = 0; i < max; i++) {
   struct object *obj = get_indexed_object(i);
   if (!obj || obj->type != OBJ_COMMIT)
    continue;
   show_name(obj, ((void*)0),
      always, allow_undefined, data.name_only);
  }
 } else {
  int i;
  for (i = 0; i < revs.nr; i++)
   show_name(revs.objects[i].item, revs.objects[i].name,
      always, allow_undefined, data.name_only);
 }

 UNLEAK(revs);
 return 0;
}
