
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct ref {int dummy; } ;
struct packet_reader {scalar_t__ status; int line; } ;
struct argv_array {int argc; int * argv; } ;
struct TYPE_2__ {int string; } ;


 scalar_t__ PACKET_READ_FLUSH ;
 scalar_t__ PACKET_READ_NORMAL ;
 int _ (char*) ;
 int die (int ,...) ;
 int git_user_agent_sanitized () ;
 int packet_delim (int) ;
 int packet_flush (int) ;
 scalar_t__ packet_reader_read (struct packet_reader*) ;
 int packet_write_fmt (int,char*,...) ;
 int process_ref_v2 (int ,struct ref***) ;
 scalar_t__ server_supports_v2 (char*,int) ;

struct ref **get_remote_refs(int fd_out, struct packet_reader *reader,
        struct ref **list, int for_push,
        const struct argv_array *ref_prefixes,
        const struct string_list *server_options)
{
 int i;
 *list = ((void*)0);

 if (server_supports_v2("ls-refs", 1))
  packet_write_fmt(fd_out, "command=ls-refs\n");

 if (server_supports_v2("agent", 0))
  packet_write_fmt(fd_out, "agent=%s", git_user_agent_sanitized());

 if (server_options && server_options->nr &&
     server_supports_v2("server-option", 1))
  for (i = 0; i < server_options->nr; i++)
   packet_write_fmt(fd_out, "server-option=%s",
      server_options->items[i].string);

 packet_delim(fd_out);

 if (!for_push)
  packet_write_fmt(fd_out, "peel\n");
 packet_write_fmt(fd_out, "symrefs\n");
 for (i = 0; ref_prefixes && i < ref_prefixes->argc; i++) {
  packet_write_fmt(fd_out, "ref-prefix %s\n",
     ref_prefixes->argv[i]);
 }
 packet_flush(fd_out);


 while (packet_reader_read(reader) == PACKET_READ_NORMAL) {
  if (!process_ref_v2(reader->line, &list))
   die(_("invalid ls-refs response: %s"), reader->line);
 }

 if (reader->status != PACKET_READ_FLUSH)
  die(_("expected flush after ref listing"));

 return list;
}
