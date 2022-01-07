
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct strbuf {int buf; } ;
struct option {int dummy; } ;
struct column_options {int width; char const* indent; int nl; int padding; } ;
typedef int copts ;


 int N_ (char*) ;
 struct option OPT_COLUMN (int ,char*,int*,int ) ;
 struct option OPT_END () ;
 struct option OPT_INTEGER (int ,char*,int*,int ) ;
 struct option OPT_STRING (int ,char*,char const**,int ,int ) ;
 struct strbuf STRBUF_INIT ;
 struct string_list STRING_LIST_INIT_DUP ;
 int _ (char*) ;
 int builtin_column_usage ;
 int colopts ;
 int column_config ;
 int die (int ) ;
 int finalize_colopts (int*,int) ;
 int git_config (int ,void*) ;
 int memset (struct column_options*,int ,int) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int print_columns (struct string_list*,int,struct column_options*) ;
 scalar_t__ starts_with (char const*,char*) ;
 int stdin ;
 int strbuf_getline (struct strbuf*,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int string_list_append (struct string_list*,int ) ;
 int usage_with_options (int ,struct option*) ;

int cmd_column(int argc, const char **argv, const char *prefix)
{
 struct string_list list = STRING_LIST_INIT_DUP;
 struct strbuf sb = STRBUF_INIT;
 struct column_options copts;
 const char *command = ((void*)0), *real_command = ((void*)0);
 struct option options[] = {
  OPT_STRING(0, "command", &real_command, N_("name"), N_("lookup config vars")),
  OPT_COLUMN(0, "mode", &colopts, N_("layout to use")),
  OPT_INTEGER(0, "raw-mode", &colopts, N_("layout to use")),
  OPT_INTEGER(0, "width", &copts.width, N_("Maximum width")),
  OPT_STRING(0, "indent", &copts.indent, N_("string"), N_("Padding space on left border")),
  OPT_INTEGER(0, "nl", &copts.nl, N_("Padding space on right border")),
  OPT_INTEGER(0, "padding", &copts.padding, N_("Padding space between columns")),
  OPT_END()
 };


 if (argc > 1 && starts_with(argv[1], "--command=")) {
  command = argv[1] + 10;
  git_config(column_config, (void *)command);
 } else
  git_config(column_config, ((void*)0));

 memset(&copts, 0, sizeof(copts));
 copts.padding = 1;
 argc = parse_options(argc, argv, prefix, options, builtin_column_usage, 0);
 if (argc)
  usage_with_options(builtin_column_usage, options);
 if (real_command || command) {
  if (!real_command || !command || strcmp(real_command, command))
   die(_("--command must be the first argument"));
 }
 finalize_colopts(&colopts, -1);
 while (!strbuf_getline(&sb, stdin))
  string_list_append(&list, sb.buf);

 print_columns(&list, colopts, &copts);
 return 0;
}
