
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int buf; } ;
struct todo_list {TYPE_3__ buf; } ;
struct string_list {int dummy; } ;
struct replay_opts {int dummy; } ;
struct rebase_options {char* head_name; int autosquash; int onto; int onto_name; int cmd; TYPE_2__* restrict_revision; int * squash_onto; int upstream; int switch_to; } ;
struct argv_array {int argv; int argc; } ;
struct TYPE_4__ {int oid; } ;
struct TYPE_5__ {TYPE_1__ object; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int BUG (char*) ;
 struct string_list STRING_LIST_INIT_DUP ;
 struct todo_list TODO_LIST_INIT ;
 int _ (char*) ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,int ) ;
 int argv_array_pushl (struct argv_array*,char*,char*,int *) ;
 int complete_action (int ,struct replay_opts*,unsigned int,char*,int ,int ,char const*,struct string_list*,int ,struct todo_list*) ;
 int discard_cache () ;
 int error (int ) ;
 int free (char*) ;
 struct replay_opts get_replay_opts (struct rebase_options*) ;
 scalar_t__ get_revision_ranges (int ,int ,char const**,char**,char**) ;
 scalar_t__ init_basic_state (struct replay_opts*,char*,int ,char const*) ;
 int oid_to_hex (int *) ;
 int path_squash_onto () ;
 scalar_t__ prepare_branch_to_be_rebased (int ,struct replay_opts*,int ) ;
 int sequencer_make_script (int ,TYPE_3__*,int ,int ,unsigned int) ;
 int split_exec_commands (int ,struct string_list*) ;
 int string_list_clear (struct string_list*,int ) ;
 int the_repository ;
 scalar_t__ todo_list_parse_insn_buffer (int ,int ,struct todo_list*) ;
 int todo_list_release (struct todo_list*) ;
 int write_file (int ,char*,int ) ;

__attribute__((used)) static int do_interactive_rebase(struct rebase_options *opts, unsigned flags)
{
 int ret;
 const char *head_hash = ((void*)0);
 char *revisions = ((void*)0), *shortrevisions = ((void*)0);
 struct argv_array make_script_args = ARGV_ARRAY_INIT;
 struct todo_list todo_list = TODO_LIST_INIT;
 struct replay_opts replay = get_replay_opts(opts);
 struct string_list commands = STRING_LIST_INIT_DUP;

 if (prepare_branch_to_be_rebased(the_repository, &replay,
      opts->switch_to))
  return -1;

 if (get_revision_ranges(opts->upstream, opts->onto, &head_hash,
    &revisions, &shortrevisions))
  return -1;

 if (init_basic_state(&replay,
        opts->head_name ? opts->head_name : "detached HEAD",
        opts->onto, head_hash)) {
  free(revisions);
  free(shortrevisions);

  return -1;
 }

 if (!opts->upstream && opts->squash_onto)
  write_file(path_squash_onto(), "%s\n",
      oid_to_hex(opts->squash_onto));

 argv_array_pushl(&make_script_args, "", revisions, ((void*)0));
 if (opts->restrict_revision)
  argv_array_push(&make_script_args,
    oid_to_hex(&opts->restrict_revision->object.oid));

 ret = sequencer_make_script(the_repository, &todo_list.buf,
        make_script_args.argc, make_script_args.argv,
        flags);

 if (ret)
  error(_("could not generate todo list"));
 else {
  discard_cache();
  if (todo_list_parse_insn_buffer(the_repository, todo_list.buf.buf,
      &todo_list))
   BUG("unusable todo list");

  split_exec_commands(opts->cmd, &commands);
  ret = complete_action(the_repository, &replay, flags,
   shortrevisions, opts->onto_name, opts->onto, head_hash,
   &commands, opts->autosquash, &todo_list);
 }

 string_list_clear(&commands, 0);
 free(revisions);
 free(shortrevisions);
 todo_list_release(&todo_list);
 argv_array_clear(&make_script_args);

 return ret;
}
