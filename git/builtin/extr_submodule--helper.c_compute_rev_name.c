
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct child_process {char const* dir; int git_cmd; int no_stderr; int args; int env_array; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 int argv_array_push (int *,char const*) ;
 int argv_array_pushv (int *,char const**) ;
 int capture_command (struct child_process*,struct strbuf*,int ) ;
 int prepare_submodule_repo_env (int *) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_strip_suffix (struct strbuf*,char*) ;

__attribute__((used)) static char *compute_rev_name(const char *sub_path, const char* object_id)
{
 struct strbuf sb = STRBUF_INIT;
 const char ***d;

 static const char *describe_bare[] = { ((void*)0) };

 static const char *describe_tags[] = { "--tags", ((void*)0) };

 static const char *describe_contains[] = { "--contains", ((void*)0) };

 static const char *describe_all_always[] = { "--all", "--always", ((void*)0) };

 static const char **describe_argv[] = { describe_bare, describe_tags,
      describe_contains,
      describe_all_always, ((void*)0) };

 for (d = describe_argv; *d; d++) {
  struct child_process cp = CHILD_PROCESS_INIT;
  prepare_submodule_repo_env(&cp.env_array);
  cp.dir = sub_path;
  cp.git_cmd = 1;
  cp.no_stderr = 1;

  argv_array_push(&cp.args, "describe");
  argv_array_pushv(&cp.args, *d);
  argv_array_push(&cp.args, object_id);

  if (!capture_command(&cp, &sb, 0)) {
   strbuf_strip_suffix(&sb, "\n");
   return strbuf_detach(&sb, ((void*)0));
  }
 }

 strbuf_release(&sb);
 return ((void*)0);
}
