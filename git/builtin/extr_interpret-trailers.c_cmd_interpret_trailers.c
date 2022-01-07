
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process_trailer_options {scalar_t__ in_place; scalar_t__ only_input; scalar_t__ no_divider; scalar_t__ unfold; scalar_t__ only_trailers; scalar_t__ trim_empty; } ;
struct option {char* member_2; int member_6; int member_7; int member_5; int * member_4; struct process_trailer_options* member_3; int member_1; int member_0; } ;


 int LIST_HEAD (int ) ;
 int N_ (char*) ;
 int OPTION_CALLBACK ;
 struct option OPT_BOOL (int ,char*,scalar_t__*,int ) ;
 struct option OPT_CALLBACK (int ,char*,int *,int ,int ,int ) ;
 struct option OPT_END () ;
 int PARSE_OPT_NOARG ;
 int PARSE_OPT_NONEG ;
 struct process_trailer_options PROCESS_TRAILER_OPTIONS_INIT ;
 int _ (char*) ;
 int die (int ) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int git_interpret_trailers_usage ;
 int list_empty (int *) ;
 int new_trailers_clear (int *) ;
 int option_parse_if_exists ;
 int option_parse_if_missing ;
 int option_parse_trailer ;
 int option_parse_where ;
 int parse_opt_parse ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int process_trailers (char const*,struct process_trailer_options*,int *) ;
 int trailers ;
 int usage_msg_opt (int ,int ,struct option*) ;

int cmd_interpret_trailers(int argc, const char **argv, const char *prefix)
{
 struct process_trailer_options opts = PROCESS_TRAILER_OPTIONS_INIT;
 LIST_HEAD(trailers);

 struct option options[] = {
  OPT_BOOL(0, "in-place", &opts.in_place, N_("edit files in place")),
  OPT_BOOL(0, "trim-empty", &opts.trim_empty, N_("trim empty trailers")),

  OPT_CALLBACK(0, "where", ((void*)0), N_("action"),
        N_("where to place the new trailer"), option_parse_where),
  OPT_CALLBACK(0, "if-exists", ((void*)0), N_("action"),
        N_("action if trailer already exists"), option_parse_if_exists),
  OPT_CALLBACK(0, "if-missing", ((void*)0), N_("action"),
        N_("action if trailer is missing"), option_parse_if_missing),

  OPT_BOOL(0, "only-trailers", &opts.only_trailers, N_("output only the trailers")),
  OPT_BOOL(0, "only-input", &opts.only_input, N_("do not apply config rules")),
  OPT_BOOL(0, "unfold", &opts.unfold, N_("join whitespace-continued values")),
  { OPTION_CALLBACK, 0, "parse", &opts, ((void*)0), N_("set parsing options"),
   PARSE_OPT_NOARG | PARSE_OPT_NONEG, parse_opt_parse },
  OPT_BOOL(0, "no-divider", &opts.no_divider, N_("do not treat --- specially")),
  OPT_CALLBACK(0, "trailer", &trailers, N_("trailer"),
    N_("trailer(s) to add"), option_parse_trailer),
  OPT_END()
 };

 git_config(git_default_config, ((void*)0));

 argc = parse_options(argc, argv, prefix, options,
        git_interpret_trailers_usage, 0);

 if (opts.only_input && !list_empty(&trailers))
  usage_msg_opt(
   _("--trailer with --only-input does not make sense"),
   git_interpret_trailers_usage,
   options);

 if (argc) {
  int i;
  for (i = 0; i < argc; i++)
   process_trailers(argv[i], &opts, &trailers);
 } else {
  if (opts.in_place)
   die(_("no input file given for in-place editing"));
  process_trailers(((void*)0), &opts, &trailers);
 }

 new_trailers_clear(&trailers);

 return 0;
}
