
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {char member_1; char* member_2; int member_7; int member_6; int member_5; int member_4; struct note_data* member_3; int member_0; } ;
struct object_id {int hash; } ;
struct notes_tree {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct note_data {TYPE_1__ buf; scalar_t__ given; int member_3; int * member_2; int member_1; int member_0; } ;


 int BUG (char*) ;
 int NOTES_INIT_WRITABLE ;
 int N_ (char*) ;
 int OPTION_CALLBACK ;
 struct option OPT_BOOL (int ,char*,int*,int ) ;
 struct option OPT_END () ;
 struct option OPT__FORCE (int*,int ,int ) ;
 int PARSE_OPT_KEEP_ARGV0 ;
 int PARSE_OPT_NOCOMPLETE ;
 int PARSE_OPT_NONEG ;
 int STRBUF_INIT ;
 char* _ (char*) ;
 scalar_t__ add_note (struct notes_tree*,struct object_id*,struct object_id*,int ) ;
 int append_edit (int,char const**,char const*) ;
 int combine_notes_overwrite ;
 int commit_notes (int ,struct notes_tree*,char*) ;
 int die (char*,char const*) ;
 int error (char*,...) ;
 int fprintf (int ,char*,char*) ;
 int free_note_data (struct note_data*) ;
 int free_notes (struct notes_tree*) ;
 struct object_id* get_note (struct notes_tree*,struct object_id*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int git_notes_add_usage ;
 struct notes_tree* init_notes_check (char*,int ) ;
 char* oid_to_hex (struct object_id*) ;
 int parse_file_arg ;
 int parse_msg_arg ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int parse_reedit_arg ;
 int parse_reuse_arg ;
 int prepare_note_data (struct object_id*,struct note_data*,struct object_id const*) ;
 int remove_note (struct notes_tree*,int ) ;
 int stderr ;
 int the_repository ;
 int usage_with_options (int ,struct option*) ;
 int write_note_data (struct note_data*,struct object_id*) ;

__attribute__((used)) static int add(int argc, const char **argv, const char *prefix)
{
 int force = 0, allow_empty = 0;
 const char *object_ref;
 struct notes_tree *t;
 struct object_id object, new_note;
 const struct object_id *note;
 struct note_data d = { 0, 0, ((void*)0), STRBUF_INIT };
 struct option options[] = {
  { OPTION_CALLBACK, 'm', "message", &d, N_("message"),
   N_("note contents as a string"), PARSE_OPT_NONEG,
   parse_msg_arg},
  { OPTION_CALLBACK, 'F', "file", &d, N_("file"),
   N_("note contents in a file"), PARSE_OPT_NONEG,
   parse_file_arg},
  { OPTION_CALLBACK, 'c', "reedit-message", &d, N_("object"),
   N_("reuse and edit specified note object"), PARSE_OPT_NONEG,
   parse_reedit_arg},
  { OPTION_CALLBACK, 'C', "reuse-message", &d, N_("object"),
   N_("reuse specified note object"), PARSE_OPT_NONEG,
   parse_reuse_arg},
  OPT_BOOL(0, "allow-empty", &allow_empty,
   N_("allow storing empty note")),
  OPT__FORCE(&force, N_("replace existing notes"), PARSE_OPT_NOCOMPLETE),
  OPT_END()
 };

 argc = parse_options(argc, argv, prefix, options, git_notes_add_usage,
        PARSE_OPT_KEEP_ARGV0);

 if (2 < argc) {
  error(_("too many parameters"));
  usage_with_options(git_notes_add_usage, options);
 }

 object_ref = argc > 1 ? argv[1] : "HEAD";

 if (get_oid(object_ref, &object))
  die(_("failed to resolve '%s' as a valid ref."), object_ref);

 t = init_notes_check("add", NOTES_INIT_WRITABLE);
 note = get_note(t, &object);

 if (note) {
  if (!force) {
   free_notes(t);
   if (d.given) {
    free_note_data(&d);
    return error(_("Cannot add notes. "
     "Found existing notes for object %s. "
     "Use '-f' to overwrite existing notes"),
     oid_to_hex(&object));
   }







   argv[0] = "edit";
   return append_edit(argc, argv, prefix);
  }
  fprintf(stderr, _("Overwriting existing notes for object %s\n"),
   oid_to_hex(&object));
 }

 prepare_note_data(&object, &d, note);
 if (d.buf.len || allow_empty) {
  write_note_data(&d, &new_note);
  if (add_note(t, &object, &new_note, combine_notes_overwrite))
   BUG("combine_notes_overwrite failed");
  commit_notes(the_repository, t,
        "Notes added by 'git notes add'");
 } else {
  fprintf(stderr, _("Removing note for object %s\n"),
   oid_to_hex(&object));
  remove_note(t, object.hash);
  commit_notes(the_repository, t,
        "Notes removed by 'git notes add'");
 }

 free_note_data(&d);
 free_notes(t);
 return 0;
}
