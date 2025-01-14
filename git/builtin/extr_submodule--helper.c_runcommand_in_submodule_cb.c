
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {char* name; } ;
struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
struct child_process {int use_shell; char const* dir; int git_cmd; int args; int env_array; } ;
struct cb_foreach {int argc; scalar_t__* argv; scalar_t__ quiet; scalar_t__ recursive; int prefix; } ;
struct cache_entry {char* name; struct object_id oid; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 int argv_array_push (int *,char*) ;
 int argv_array_pushf (int *,char*,char const*,...) ;
 int argv_array_pushl (int *,char*,char*,...) ;
 int argv_array_pushv (int *,scalar_t__*) ;
 int die (char*,char*) ;
 int free (char*) ;
 char* get_submodule_displaypath (char const*,int ) ;
 int is_submodule_populated_gently (char const*,int *) ;
 int null_oid ;
 char* oid_to_hex (struct object_id const*) ;
 int prepare_submodule_repo_env (int *) ;
 int printf (char*,char*) ;
 scalar_t__ run_command (struct child_process*) ;
 int sq_quote_buf (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 struct submodule* submodule_from_path (int ,int *,char const*) ;
 int the_repository ;
 char* xgetcwd () ;

__attribute__((used)) static void runcommand_in_submodule_cb(const struct cache_entry *list_item,
           void *cb_data)
{
 struct cb_foreach *info = cb_data;
 const char *path = list_item->name;
 const struct object_id *ce_oid = &list_item->oid;

 const struct submodule *sub;
 struct child_process cp = CHILD_PROCESS_INIT;
 char *displaypath;

 displaypath = get_submodule_displaypath(path, info->prefix);

 sub = submodule_from_path(the_repository, &null_oid, path);

 if (!sub)
  die(_("No url found for submodule path '%s' in .gitmodules"),
   displaypath);

 if (!is_submodule_populated_gently(path, ((void*)0)))
  goto cleanup;

 prepare_submodule_repo_env(&cp.env_array);






 cp.use_shell = 1;
 cp.dir = path;







 if (info->argc == 1) {
  char *toplevel = xgetcwd();
  struct strbuf sb = STRBUF_INIT;

  argv_array_pushf(&cp.env_array, "name=%s", sub->name);
  argv_array_pushf(&cp.env_array, "sm_path=%s", path);
  argv_array_pushf(&cp.env_array, "displaypath=%s", displaypath);
  argv_array_pushf(&cp.env_array, "sha1=%s",
    oid_to_hex(ce_oid));
  argv_array_pushf(&cp.env_array, "toplevel=%s", toplevel);
  sq_quote_buf(&sb, path);
  argv_array_pushf(&cp.args, "path=%s; %s",
     sb.buf, info->argv[0]);
  strbuf_release(&sb);
  free(toplevel);
 } else {
  argv_array_pushv(&cp.args, info->argv);
 }

 if (!info->quiet)
  printf(_("Entering '%s'\n"), displaypath);

 if (info->argv[0] && run_command(&cp))
  die(_("run_command returned non-zero status for %s\n."),
   displaypath);

 if (info->recursive) {
  struct child_process cpr = CHILD_PROCESS_INIT;

  cpr.git_cmd = 1;
  cpr.dir = path;
  prepare_submodule_repo_env(&cpr.env_array);

  argv_array_pushl(&cpr.args, "--super-prefix", ((void*)0));
  argv_array_pushf(&cpr.args, "%s/", displaypath);
  argv_array_pushl(&cpr.args, "submodule--helper", "foreach", "--recursive",
    ((void*)0));

  if (info->quiet)
   argv_array_push(&cpr.args, "--quiet");

  argv_array_push(&cpr.args, "--");
  argv_array_pushv(&cpr.args, info->argv);

  if (run_command(&cpr))
   die(_("run_command returned non-zero status while "
    "recursing in the nested submodules of %s\n."),
    displaypath);
 }

cleanup:
 free(displaypath);
}
