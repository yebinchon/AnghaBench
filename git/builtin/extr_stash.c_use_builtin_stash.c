
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct child_process {int git_cmd; int args; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 int argv_array_pushl (int *,char*,char*,char*,int *) ;
 scalar_t__ capture_command (struct child_process*,struct strbuf*,int) ;
 int git_env_bool (char*,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_trim (struct strbuf*) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int use_builtin_stash(void)
{
 struct child_process cp = CHILD_PROCESS_INIT;
 struct strbuf out = STRBUF_INIT;
 int ret, env = git_env_bool("GIT_TEST_STASH_USE_BUILTIN", -1);

 if (env != -1)
  return env;

 argv_array_pushl(&cp.args,
    "config", "--bool", "stash.usebuiltin", ((void*)0));
 cp.git_cmd = 1;
 if (capture_command(&cp, &out, 6)) {
  strbuf_release(&out);
  return 1;
 }

 strbuf_trim(&out);
 ret = !strcmp("true", out.buf);
 strbuf_release(&out);
 return ret;
}
