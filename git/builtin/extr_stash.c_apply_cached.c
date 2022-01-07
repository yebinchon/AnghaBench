
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct child_process {int git_cmd; int args; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int argv_array_pushl (int *,char*,char*,int *) ;
 int pipe_command (struct child_process*,int ,int ,int *,int ,int *,int ) ;

__attribute__((used)) static int apply_cached(struct strbuf *out)
{
 struct child_process cp = CHILD_PROCESS_INIT;






 cp.git_cmd = 1;
 argv_array_pushl(&cp.args, "apply", "--cached", ((void*)0));
 return pipe_command(&cp, out->buf, out->len, ((void*)0), 0, ((void*)0), 0);
}
