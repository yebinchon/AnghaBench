
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; size_t len; } ;
struct receive_hook_feed_state {TYPE_1__ buf; struct command* cmd; scalar_t__ skip_broken; } ;
struct command {struct command* next; int ref_name; int new_oid; int old_oid; scalar_t__ did_not_exist; scalar_t__ error_string; } ;


 int oid_to_hex (int *) ;
 int strbuf_addf (TYPE_1__*,char*,int ,int ,int ) ;
 int strbuf_reset (TYPE_1__*) ;

__attribute__((used)) static int feed_receive_hook(void *state_, const char **bufp, size_t *sizep)
{
 struct receive_hook_feed_state *state = state_;
 struct command *cmd = state->cmd;

 while (cmd &&
        state->skip_broken && (cmd->error_string || cmd->did_not_exist))
  cmd = cmd->next;
 if (!cmd)
  return -1;
 strbuf_reset(&state->buf);
 strbuf_addf(&state->buf, "%s %s %s\n",
      oid_to_hex(&cmd->old_oid), oid_to_hex(&cmd->new_oid),
      cmd->ref_name);
 state->cmd = cmd->next;
 if (bufp) {
  *bufp = state->buf.buf;
  *sizep = state->buf.len;
 }
 return 0;
}
