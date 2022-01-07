
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct shallow_info {int dummy; } ;
struct command {char const* error_string; struct command* next; } ;


 struct strbuf STRBUF_INIT ;
 int ref_transaction_begin (struct strbuf*) ;
 scalar_t__ ref_transaction_commit (int ,struct strbuf*) ;
 int ref_transaction_free (int ) ;
 int rp_error (char*,int ) ;
 int should_process_cmd (struct command*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int transaction ;
 char const* update (struct command*,struct shallow_info*) ;

__attribute__((used)) static void execute_commands_atomic(struct command *commands,
     struct shallow_info *si)
{
 struct command *cmd;
 struct strbuf err = STRBUF_INIT;
 const char *reported_error = "atomic push failure";

 transaction = ref_transaction_begin(&err);
 if (!transaction) {
  rp_error("%s", err.buf);
  strbuf_reset(&err);
  reported_error = "transaction failed to start";
  goto failure;
 }

 for (cmd = commands; cmd; cmd = cmd->next) {
  if (!should_process_cmd(cmd))
   continue;

  cmd->error_string = update(cmd, si);

  if (cmd->error_string)
   goto failure;
 }

 if (ref_transaction_commit(transaction, &err)) {
  rp_error("%s", err.buf);
  reported_error = "atomic transaction failed";
  goto failure;
 }
 goto cleanup;

failure:
 for (cmd = commands; cmd; cmd = cmd->next)
  if (!cmd->error_string)
   cmd->error_string = reported_error;

cleanup:
 ref_transaction_free(transaction);
 strbuf_release(&err);
}
