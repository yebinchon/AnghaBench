
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct child_process {int git_cmd; int args; } ;
struct am_state {int cur; int last; int dir; int prec; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 int argv_array_push (int *,char*) ;
 int argv_array_pushf (int *,char*,int ) ;
 int argv_array_pushv (int *,char const**) ;
 int capture_command (struct child_process*,struct strbuf*,int) ;
 int strbuf_release (struct strbuf*) ;
 int strtol (int ,int *,int) ;

__attribute__((used)) static int split_mail_mbox(struct am_state *state, const char **paths,
    int keep_cr, int mboxrd)
{
 struct child_process cp = CHILD_PROCESS_INIT;
 struct strbuf last = STRBUF_INIT;
 int ret;

 cp.git_cmd = 1;
 argv_array_push(&cp.args, "mailsplit");
 argv_array_pushf(&cp.args, "-d%d", state->prec);
 argv_array_pushf(&cp.args, "-o%s", state->dir);
 argv_array_push(&cp.args, "-b");
 if (keep_cr)
  argv_array_push(&cp.args, "--keep-cr");
 if (mboxrd)
  argv_array_push(&cp.args, "--mboxrd");
 argv_array_push(&cp.args, "--");
 argv_array_pushv(&cp.args, paths);

 ret = capture_command(&cp, &last, 8);
 if (ret)
  goto exit;

 state->cur = 1;
 state->last = strtol(last.buf, ((void*)0), 10);

exit:
 strbuf_release(&last);
 return ret ? -1 : 0;
}
