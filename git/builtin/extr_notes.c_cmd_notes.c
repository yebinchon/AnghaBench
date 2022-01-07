
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_END () ;
 struct option OPT_STRING (int ,char*,char const**,int ,int ) ;
 int PARSE_OPT_STOP_AT_NON_OPTION ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int add (int,char const**,char const*) ;
 int append_edit (int,char const**,char const*) ;
 int copy (int,char const**,char const*) ;
 int error (int ,char const*) ;
 int expand_notes_ref (struct strbuf*) ;
 int get_ref (int,char const**,char const*) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int git_notes_usage ;
 int list (int,char const**,char const*) ;
 int merge (int,char const**,char const*) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int prune (int,char const**,char const*) ;
 int remove_cmd (int,char const**,char const*) ;
 int setenv (char*,int ,int) ;
 int show (int,char const**,char const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,char*) ;
 int usage_with_options (int ,struct option*) ;

int cmd_notes(int argc, const char **argv, const char *prefix)
{
 int result;
 const char *override_notes_ref = ((void*)0);
 struct option options[] = {
  OPT_STRING(0, "ref", &override_notes_ref, N_("notes-ref"),
      N_("use notes from <notes-ref>")),
  OPT_END()
 };

 git_config(git_default_config, ((void*)0));
 argc = parse_options(argc, argv, prefix, options, git_notes_usage,
        PARSE_OPT_STOP_AT_NON_OPTION);

 if (override_notes_ref) {
  struct strbuf sb = STRBUF_INIT;
  strbuf_addstr(&sb, override_notes_ref);
  expand_notes_ref(&sb);
  setenv("GIT_NOTES_REF", sb.buf, 1);
  strbuf_release(&sb);
 }

 if (argc < 1 || !strcmp(argv[0], "list"))
  result = list(argc, argv, prefix);
 else if (!strcmp(argv[0], "add"))
  result = add(argc, argv, prefix);
 else if (!strcmp(argv[0], "copy"))
  result = copy(argc, argv, prefix);
 else if (!strcmp(argv[0], "append") || !strcmp(argv[0], "edit"))
  result = append_edit(argc, argv, prefix);
 else if (!strcmp(argv[0], "show"))
  result = show(argc, argv, prefix);
 else if (!strcmp(argv[0], "merge"))
  result = merge(argc, argv, prefix);
 else if (!strcmp(argv[0], "remove"))
  result = remove_cmd(argc, argv, prefix);
 else if (!strcmp(argv[0], "prune"))
  result = prune(argc, argv, prefix);
 else if (!strcmp(argv[0], "get-ref"))
  result = get_ref(argc, argv, prefix);
 else {
  result = error(_("unknown subcommand: %s"), argv[0]);
  usage_with_options(git_notes_usage, options);
 }

 return result ? 1 : 0;
}
