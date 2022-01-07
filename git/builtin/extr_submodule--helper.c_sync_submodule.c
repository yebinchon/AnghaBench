
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {char* url; char* name; } ;
struct strbuf {int buf; } ;
struct child_process {int git_cmd; char const* dir; int args; int env_array; } ;


 struct child_process CHILD_PROCESS_INIT ;
 unsigned int OPT_QUIET ;
 unsigned int OPT_RECURSIVE ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 int argv_array_push (int *,char*) ;
 int argv_array_pushf (int *,char*,char*) ;
 int argv_array_pushl (int *,char*,char*,char*,...) ;
 scalar_t__ capture_command (struct child_process*,struct strbuf*,int ) ;
 int die (char*,char const*) ;
 int free (char*) ;
 char* get_default_remote () ;
 char* get_submodule_displaypath (char const*,char const*) ;
 char* get_up_path (char const*) ;
 scalar_t__ git_config_get_string (int ,char**) ;
 scalar_t__ git_config_set_gently (int ,char*) ;
 scalar_t__ git_config_set_in_file_gently (int ,char*,char*) ;
 int is_submodule_active (int ,char const*) ;
 int is_submodule_populated_gently (char const*,int *) ;
 int null_oid ;
 int prepare_submodule_repo_env (int *) ;
 int printf (char*,char*) ;
 char* relative_url (char*,char*,char*) ;
 scalar_t__ run_command (struct child_process*) ;
 scalar_t__ starts_with_dot_dot_slash (char*) ;
 scalar_t__ starts_with_dot_slash (char*) ;
 int strbuf_addf (struct strbuf*,char*,char*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_strip_suffix (struct strbuf*,char*) ;
 struct submodule* submodule_from_path (int ,int *,char const*) ;
 int submodule_to_gitdir (struct strbuf*,char const*) ;
 int the_repository ;
 char* xgetcwd () ;
 char* xstrdup (char*) ;
 char* xstrfmt (char*,int ) ;

__attribute__((used)) static void sync_submodule(const char *path, const char *prefix,
      unsigned int flags)
{
 const struct submodule *sub;
 char *remote_key = ((void*)0);
 char *sub_origin_url, *super_config_url, *displaypath;
 struct strbuf sb = STRBUF_INIT;
 struct child_process cp = CHILD_PROCESS_INIT;
 char *sub_config_path = ((void*)0);

 if (!is_submodule_active(the_repository, path))
  return;

 sub = submodule_from_path(the_repository, &null_oid, path);

 if (sub && sub->url) {
  if (starts_with_dot_dot_slash(sub->url) ||
      starts_with_dot_slash(sub->url)) {
   char *remote_url, *up_path;
   char *remote = get_default_remote();
   strbuf_addf(&sb, "remote.%s.url", remote);

   if (git_config_get_string(sb.buf, &remote_url))
    remote_url = xgetcwd();

   up_path = get_up_path(path);
   sub_origin_url = relative_url(remote_url, sub->url, up_path);
   super_config_url = relative_url(remote_url, sub->url, ((void*)0));

   free(remote);
   free(up_path);
   free(remote_url);
  } else {
   sub_origin_url = xstrdup(sub->url);
   super_config_url = xstrdup(sub->url);
  }
 } else {
  sub_origin_url = xstrdup("");
  super_config_url = xstrdup("");
 }

 displaypath = get_submodule_displaypath(path, prefix);

 if (!(flags & OPT_QUIET))
  printf(_("Synchronizing submodule url for '%s'\n"),
    displaypath);

 strbuf_reset(&sb);
 strbuf_addf(&sb, "submodule.%s.url", sub->name);
 if (git_config_set_gently(sb.buf, super_config_url))
  die(_("failed to register url for submodule path '%s'"),
        displaypath);

 if (!is_submodule_populated_gently(path, ((void*)0)))
  goto cleanup;

 prepare_submodule_repo_env(&cp.env_array);
 cp.git_cmd = 1;
 cp.dir = path;
 argv_array_pushl(&cp.args, "submodule--helper",
    "print-default-remote", ((void*)0));

 strbuf_reset(&sb);
 if (capture_command(&cp, &sb, 0))
  die(_("failed to get the default remote for submodule '%s'"),
        path);

 strbuf_strip_suffix(&sb, "\n");
 remote_key = xstrfmt("remote.%s.url", sb.buf);

 strbuf_reset(&sb);
 submodule_to_gitdir(&sb, path);
 strbuf_addstr(&sb, "/config");

 if (git_config_set_in_file_gently(sb.buf, remote_key, sub_origin_url))
  die(_("failed to update remote for submodule '%s'"),
        path);

 if (flags & OPT_RECURSIVE) {
  struct child_process cpr = CHILD_PROCESS_INIT;

  cpr.git_cmd = 1;
  cpr.dir = path;
  prepare_submodule_repo_env(&cpr.env_array);

  argv_array_push(&cpr.args, "--super-prefix");
  argv_array_pushf(&cpr.args, "%s/", displaypath);
  argv_array_pushl(&cpr.args, "submodule--helper", "sync",
     "--recursive", ((void*)0));

  if (flags & OPT_QUIET)
   argv_array_push(&cpr.args, "--quiet");

  if (run_command(&cpr))
   die(_("failed to recurse into submodule '%s'"),
         path);
 }

cleanup:
 free(super_config_url);
 free(sub_origin_url);
 strbuf_release(&sb);
 free(remote_key);
 free(displaypath);
 free(sub_config_path);
}
