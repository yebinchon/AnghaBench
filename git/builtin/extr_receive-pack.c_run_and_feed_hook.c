
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct receive_hook_feed_state {TYPE_2__* push_options; } ;
struct child_process {char const** argv; int in; int stdout_to_stderr; char const* trace2_hook_name; int err; int env_array; } ;
struct async {int in; int proc; } ;
typedef int muxer ;
typedef scalar_t__ (* feed_fn ) (struct receive_hook_feed_state*,char const**,size_t*) ;
struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct TYPE_3__ {int string; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int SIGPIPE ;
 int SIG_IGN ;
 int argv_array_pushf (int *,char*,...) ;
 int argv_array_pushv (int *,int ) ;
 int close (int) ;
 int copy_to_sideband ;
 char* find_hook (char const*) ;
 int finish_async (struct async*) ;
 int finish_command (struct child_process*) ;
 int memset (struct async*,int ,int) ;
 int prepare_push_cert_sha1 (struct child_process*) ;
 int sigchain_pop (int ) ;
 int sigchain_push (int ,int ) ;
 int start_async (struct async*) ;
 int start_command (struct child_process*) ;
 scalar_t__ tmp_objdir ;
 int tmp_objdir_env (scalar_t__) ;
 scalar_t__ use_sideband ;
 scalar_t__ write_in_full (int,char const*,size_t) ;

__attribute__((used)) static int run_and_feed_hook(const char *hook_name, feed_fn feed,
        struct receive_hook_feed_state *feed_state)
{
 struct child_process proc = CHILD_PROCESS_INIT;
 struct async muxer;
 const char *argv[2];
 int code;

 argv[0] = find_hook(hook_name);
 if (!argv[0])
  return 0;

 argv[1] = ((void*)0);

 proc.argv = argv;
 proc.in = -1;
 proc.stdout_to_stderr = 1;
 proc.trace2_hook_name = hook_name;

 if (feed_state->push_options) {
  int i;
  for (i = 0; i < feed_state->push_options->nr; i++)
   argv_array_pushf(&proc.env_array,
    "GIT_PUSH_OPTION_%d=%s", i,
    feed_state->push_options->items[i].string);
  argv_array_pushf(&proc.env_array, "GIT_PUSH_OPTION_COUNT=%d",
     feed_state->push_options->nr);
 } else
  argv_array_pushf(&proc.env_array, "GIT_PUSH_OPTION_COUNT");

 if (tmp_objdir)
  argv_array_pushv(&proc.env_array, tmp_objdir_env(tmp_objdir));

 if (use_sideband) {
  memset(&muxer, 0, sizeof(muxer));
  muxer.proc = copy_to_sideband;
  muxer.in = -1;
  code = start_async(&muxer);
  if (code)
   return code;
  proc.err = muxer.in;
 }

 prepare_push_cert_sha1(&proc);

 code = start_command(&proc);
 if (code) {
  if (use_sideband)
   finish_async(&muxer);
  return code;
 }

 sigchain_push(SIGPIPE, SIG_IGN);

 while (1) {
  const char *buf;
  size_t n;
  if (feed(feed_state, &buf, &n))
   break;
  if (write_in_full(proc.in, buf, n) < 0)
   break;
 }
 close(proc.in);
 if (use_sideband)
  finish_async(&muxer);

 sigchain_pop(SIGPIPE);

 return finish_command(&proc);
}
