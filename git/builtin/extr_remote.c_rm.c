
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct string_list_item {int string; struct branch_info* util; } ;
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {char const* buf; } ;
struct remote {int name; } ;
struct option {int dummy; } ;
struct known_remotes {struct remote* to_delete; int * member_1; int * member_0; } ;
struct branches_for_remote {struct remote* remote; struct known_remotes* keep; struct string_list* skipped; struct string_list* branches; } ;
struct branch_info {scalar_t__ remote_name; } ;
typedef int cb_data ;
struct TYPE_4__ {int nr; struct string_list_item* items; } ;
struct TYPE_3__ {char* string; } ;


 int CONFIG_NOTHING_SET ;
 struct option OPT_END () ;
 int Q_ (char*,char*,int) ;
 int REF_NO_DEREF ;
 struct strbuf STRBUF_INIT ;
 struct string_list STRING_LIST_INIT_DUP ;
 int _ (char*) ;
 int add_branch_for_removal ;
 int add_known_remote ;
 TYPE_2__ branch_list ;
 int builtin_remote_rm_usage ;
 int delete_refs (char*,struct string_list*,int ) ;
 int die (int ,char const*) ;
 int error (int ,char const*) ;
 int for_each_ref (int ,struct branches_for_remote*) ;
 int for_each_remote (int ,struct known_remotes*) ;
 int fprintf (int ,char*,char*) ;
 int fprintf_ln (int ,int ) ;
 int git_config_rename_section (char const*,int *) ;
 int git_config_set_gently (char const*,int *) ;
 int memset (struct branches_for_remote*,int ,int) ;
 int read_branches () ;
 struct remote* remote_get (char const*) ;
 int remote_is_configured (struct remote*,int) ;
 int stderr ;
 int strbuf_addf (struct strbuf*,char*,int ,...) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strcmp (scalar_t__,int ) ;
 int string_list_clear (struct string_list*,int ) ;
 int usage_with_options (int ,struct option*) ;

__attribute__((used)) static int rm(int argc, const char **argv)
{
 struct option options[] = {
  OPT_END()
 };
 struct remote *remote;
 struct strbuf buf = STRBUF_INIT;
 struct known_remotes known_remotes = { ((void*)0), ((void*)0) };
 struct string_list branches = STRING_LIST_INIT_DUP;
 struct string_list skipped = STRING_LIST_INIT_DUP;
 struct branches_for_remote cb_data;
 int i, result;

 memset(&cb_data, 0, sizeof(cb_data));
 cb_data.branches = &branches;
 cb_data.skipped = &skipped;
 cb_data.keep = &known_remotes;

 if (argc != 2)
  usage_with_options(builtin_remote_rm_usage, options);

 remote = remote_get(argv[1]);
 if (!remote_is_configured(remote, 1))
  die(_("No such remote: '%s'"), argv[1]);

 known_remotes.to_delete = remote;
 for_each_remote(add_known_remote, &known_remotes);

 read_branches();
 for (i = 0; i < branch_list.nr; i++) {
  struct string_list_item *item = branch_list.items + i;
  struct branch_info *info = item->util;
  if (info->remote_name && !strcmp(info->remote_name, remote->name)) {
   const char *keys[] = { "remote", "merge", ((void*)0) }, **k;
   for (k = keys; *k; k++) {
    strbuf_reset(&buf);
    strbuf_addf(&buf, "branch.%s.%s",
      item->string, *k);
    result = git_config_set_gently(buf.buf, ((void*)0));
    if (result && result != CONFIG_NOTHING_SET)
     die(_("could not unset '%s'"), buf.buf);
   }
  }
 }






 cb_data.remote = remote;
 result = for_each_ref(add_branch_for_removal, &cb_data);
 strbuf_release(&buf);

 if (!result)
  result = delete_refs("remote: remove", &branches, REF_NO_DEREF);
 string_list_clear(&branches, 0);

 if (skipped.nr) {
  fprintf_ln(stderr,
      Q_("Note: A branch outside the refs/remotes/ hierarchy was not removed;\n"
         "to delete it, use:",
         "Note: Some branches outside the refs/remotes/ hierarchy were not removed;\n"
         "to delete them, use:",
         skipped.nr));
  for (i = 0; i < skipped.nr; i++)
   fprintf(stderr, "  git branch -d %s\n",
    skipped.items[i].string);
 }
 string_list_clear(&skipped, 0);

 if (!result) {
  strbuf_addf(&buf, "remote.%s", remote->name);
  if (git_config_rename_section(buf.buf, ((void*)0)) < 1)
   return error(_("Could not remove config section '%s'"), buf.buf);
 }

 return result;
}
