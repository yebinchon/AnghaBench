
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct shallow_info {int nr_theirs; int nr_ours; } ;
struct packet_reader {int dummy; } ;
struct option {int dummy; } ;
struct oid_array {int dummy; } ;
struct command {char* error_string; struct command* next; } ;
struct child_process {int no_stdin; int stdout_to_stderr; int err; int git_cmd; char const** argv; } ;
struct TYPE_2__ {int objects; } ;


 int BUG (char*) ;
 struct child_process CHILD_PROCESS_INIT ;
 int KEEPALIVE_ALWAYS ;
 int N_ (char*) ;
 struct oid_array OID_ARRAY_INIT ;
 struct option OPT_END () ;
 struct option OPT_HIDDEN_BOOL (int ,char*,int*,int *) ;
 struct option OPT__QUIET (int *,int ) ;
 int PACKET_READ_CHOMP_NEWLINE ;
 int PACKET_READ_DIE_ON_ERR_PACKET ;
 struct string_list STRING_LIST_INIT_DUP ;
 int _ (char*) ;
 scalar_t__ auto_gc ;
 scalar_t__ auto_update_server_info ;
 scalar_t__ cert_nonce_seed ;
 int check_cert_push_options (struct string_list*) ;
 int clear_shallow_info (struct shallow_info*) ;
 int close_object_store (int ) ;
 int copy_to_sideband (int,int,int *) ;
 int delete_only (struct command*) ;
 int determine_protocol_version_server () ;
 int die (char*,char const*) ;
 int enter_repo (char const*,int ) ;
 int execute_commands (struct command*,char const*,struct shallow_info*,struct string_list*) ;
 int finish_command (struct child_process*) ;
 int free (void*) ;
 int git_config (int ,int *) ;
 int oid_array_clear (struct oid_array*) ;
 scalar_t__ pack_lockfile ;
 int packet_flush (int) ;
 int packet_reader_init (struct packet_reader*,int ,int *,int ,int) ;
 int packet_trace_identity (char*) ;
 int packet_write_fmt (int,char*) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 scalar_t__ prepare_push_cert_nonce (char const*,int ) ;
 int prepare_shallow_info (struct shallow_info*,struct oid_array*) ;




 scalar_t__ push_cert_nonce ;
 int quiet ;
 struct command* read_head_info (struct packet_reader*,struct oid_array*) ;
 int read_push_options (struct packet_reader*,struct string_list*) ;
 int receive_pack_config ;
 int receive_pack_usage ;
 scalar_t__ receive_unpack_limit ;
 int reject_thin ;
 int report (struct command*,char const*) ;
 scalar_t__ report_status ;
 int run_receive_hook (struct command*,char*,int,struct string_list*) ;
 int run_update_post_hook (struct command*) ;
 char const* service_dir ;
 int setup_path () ;
 scalar_t__ shallow_update ;
 int start_command (struct child_process*) ;
 int stateless_rpc ;
 int string_list_clear (struct string_list*,int ) ;
 TYPE_1__* the_repository ;
 int time (int *) ;
 scalar_t__ transfer_unpack_limit ;
 int unlink_or_warn (scalar_t__) ;
 scalar_t__ unpack_limit ;
 char* unpack_with_sideband (struct shallow_info*) ;
 int update_server_info (int ) ;
 int update_shallow_info (struct command*,struct shallow_info*,struct oid_array*) ;
 int usage_msg_opt (int ,int ,struct option*) ;
 int use_keepalive ;
 scalar_t__ use_push_options ;
 scalar_t__ use_sideband ;
 int write_head_info () ;

int cmd_receive_pack(int argc, const char **argv, const char *prefix)
{
 int advertise_refs = 0;
 struct command *commands;
 struct oid_array shallow = OID_ARRAY_INIT;
 struct oid_array ref = OID_ARRAY_INIT;
 struct shallow_info si;
 struct packet_reader reader;

 struct option options[] = {
  OPT__QUIET(&quiet, N_("quiet")),
  OPT_HIDDEN_BOOL(0, "stateless-rpc", &stateless_rpc, ((void*)0)),
  OPT_HIDDEN_BOOL(0, "advertise-refs", &advertise_refs, ((void*)0)),
  OPT_HIDDEN_BOOL(0, "reject-thin-pack-for-testing", &reject_thin, ((void*)0)),
  OPT_END()
 };

 packet_trace_identity("receive-pack");

 argc = parse_options(argc, argv, prefix, options, receive_pack_usage, 0);

 if (argc > 1)
  usage_msg_opt(_("Too many arguments."), receive_pack_usage, options);
 if (argc == 0)
  usage_msg_opt(_("You must specify a directory."), receive_pack_usage, options);

 service_dir = argv[0];

 setup_path();

 if (!enter_repo(service_dir, 0))
  die("'%s' does not appear to be a git repository", service_dir);

 git_config(receive_pack_config, ((void*)0));
 if (cert_nonce_seed)
  push_cert_nonce = prepare_push_cert_nonce(service_dir, time(((void*)0)));

 if (0 <= transfer_unpack_limit)
  unpack_limit = transfer_unpack_limit;
 else if (0 <= receive_unpack_limit)
  unpack_limit = receive_unpack_limit;

 switch (determine_protocol_version_server()) {
 case 128:




  break;
 case 129:




  if (advertise_refs || !stateless_rpc)
   packet_write_fmt(1, "version 1\n");


 case 130:
  break;
 case 131:
  BUG("unknown protocol version");
 }

 if (advertise_refs || !stateless_rpc) {
  write_head_info();
 }
 if (advertise_refs)
  return 0;

 packet_reader_init(&reader, 0, ((void*)0), 0,
      PACKET_READ_CHOMP_NEWLINE |
      PACKET_READ_DIE_ON_ERR_PACKET);

 if ((commands = read_head_info(&reader, &shallow)) != ((void*)0)) {
  const char *unpack_status = ((void*)0);
  struct string_list push_options = STRING_LIST_INIT_DUP;

  if (use_push_options)
   read_push_options(&reader, &push_options);
  if (!check_cert_push_options(&push_options)) {
   struct command *cmd;
   for (cmd = commands; cmd; cmd = cmd->next)
    cmd->error_string = "inconsistent push options";
  }

  prepare_shallow_info(&si, &shallow);
  if (!si.nr_ours && !si.nr_theirs)
   shallow_update = 0;
  if (!delete_only(commands)) {
   unpack_status = unpack_with_sideband(&si);
   update_shallow_info(commands, &si, &ref);
  }
  use_keepalive = KEEPALIVE_ALWAYS;
  execute_commands(commands, unpack_status, &si,
     &push_options);
  if (pack_lockfile)
   unlink_or_warn(pack_lockfile);
  if (report_status)
   report(commands, unpack_status);
  run_receive_hook(commands, "post-receive", 1,
     &push_options);
  run_update_post_hook(commands);
  string_list_clear(&push_options, 0);
  if (auto_gc) {
   const char *argv_gc_auto[] = {
    "gc", "--auto", "--quiet", ((void*)0),
   };
   struct child_process proc = CHILD_PROCESS_INIT;

   proc.no_stdin = 1;
   proc.stdout_to_stderr = 1;
   proc.err = use_sideband ? -1 : 0;
   proc.git_cmd = 1;
   proc.argv = argv_gc_auto;

   close_object_store(the_repository->objects);
   if (!start_command(&proc)) {
    if (use_sideband)
     copy_to_sideband(proc.err, -1, ((void*)0));
    finish_command(&proc);
   }
  }
  if (auto_update_server_info)
   update_server_info(0);
  clear_shallow_info(&si);
 }
 if (use_sideband)
  packet_flush(1);
 oid_array_clear(&shallow);
 oid_array_clear(&ref);
 free((void *)push_cert_nonce);
 return 0;
}
