
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct command {int error_string; int ref_name; struct command* next; } ;


 struct strbuf STRBUF_INIT ;
 int packet_buf_flush (struct strbuf*) ;
 int packet_buf_write (struct strbuf*,char*,char const*,...) ;
 int send_sideband (int,int,int ,int ,scalar_t__) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ use_sideband ;
 int write_or_die (int,int ,int ) ;

__attribute__((used)) static void report(struct command *commands, const char *unpack_status)
{
 struct command *cmd;
 struct strbuf buf = STRBUF_INIT;

 packet_buf_write(&buf, "unpack %s\n",
    unpack_status ? unpack_status : "ok");
 for (cmd = commands; cmd; cmd = cmd->next) {
  if (!cmd->error_string)
   packet_buf_write(&buf, "ok %s\n",
      cmd->ref_name);
  else
   packet_buf_write(&buf, "ng %s %s\n",
      cmd->ref_name, cmd->error_string);
 }
 packet_buf_flush(&buf);

 if (use_sideband)
  send_sideband(1, 1, buf.buf, buf.len, use_sideband);
 else
  write_or_die(1, buf.buf, buf.len);
 strbuf_release(&buf);
}
