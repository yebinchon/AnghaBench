
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct strbuf {int buf; } ;
struct child_process {int out; int in; } ;
struct TYPE_2__ {struct child_process process; } ;
struct cmd2process {TYPE_1__ subprocess; } ;


 int SIGPIPE ;
 int SIG_IGN ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int assert (int ) ;
 int error (int ,char const*) ;
 int handle_filter_error (struct strbuf*,struct cmd2process*,int ) ;
 int packet_flush_gently (int ) ;
 char* packet_read_line (int ,int *) ;
 int packet_write_fmt_gently (int ,char*) ;
 int sigchain_pop (int ) ;
 int sigchain_push (int ,int ) ;
 scalar_t__ skip_prefix (char*,char*,char const**) ;
 int strcmp (int ,char*) ;
 int string_list_insert (struct string_list*,int ) ;
 scalar_t__ subprocess_find_entry (int *,char const*) ;
 int subprocess_map ;
 int subprocess_map_initialized ;
 int subprocess_read_status (int ,struct strbuf*) ;
 int xstrdup (char const*) ;

int async_query_available_blobs(const char *cmd, struct string_list *available_paths)
{
 int err;
 char *line;
 struct cmd2process *entry;
 struct child_process *process;
 struct strbuf filter_status = STRBUF_INIT;

 assert(subprocess_map_initialized);
 entry = (struct cmd2process *)subprocess_find_entry(&subprocess_map, cmd);
 if (!entry) {
  error(_("external filter '%s' is not available anymore although "
   "not all paths have been filtered"), cmd);
  return 0;
 }
 process = &entry->subprocess.process;
 sigchain_push(SIGPIPE, SIG_IGN);

 err = packet_write_fmt_gently(
  process->in, "command=list_available_blobs\n");
 if (err)
  goto done;

 err = packet_flush_gently(process->in);
 if (err)
  goto done;

 while ((line = packet_read_line(process->out, ((void*)0)))) {
  const char *path;
  if (skip_prefix(line, "pathname=", &path))
   string_list_insert(available_paths, xstrdup(path));
  else
   ;
 }

 err = subprocess_read_status(process->out, &filter_status);
 if (err)
  goto done;

 err = strcmp(filter_status.buf, "success");

done:
 sigchain_pop(SIGPIPE);

 if (err)
  handle_filter_error(&filter_status, entry, 0);
 return !err;
}
