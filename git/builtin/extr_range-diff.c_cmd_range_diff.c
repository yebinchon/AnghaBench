
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct option {int dummy; } ;
struct diff_options {int use_color; int parseopts; int * member_0; } ;


 int FREE_AND_NULL (struct option*) ;
 int N_ (char*) ;
 struct option OPT_BOOL (int ,char*,int*,int ) ;
 struct option OPT_END () ;
 struct option OPT_INTEGER (int ,char*,int*,int ) ;
 int RANGE_DIFF_CREATION_FACTOR_DEFAULT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int builtin_range_diff_usage ;
 int die (int ,char const*) ;
 int diff_setup_done (struct diff_options*) ;
 int error (int ) ;
 int git_config (int ,int *) ;
 int git_diff_ui_config ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 struct option* parse_options_concat (struct option*,int ) ;
 int repo_diff_setup (int ,struct diff_options*) ;
 int show_range_diff (int ,int ,int,int,struct diff_options*) ;
 int strbuf_addf (struct strbuf*,char*,...) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strlen (char const*) ;
 char* strstr (char const*,char*) ;
 int the_repository ;
 int usage_with_options (int ,struct option*) ;

int cmd_range_diff(int argc, const char **argv, const char *prefix)
{
 int creation_factor = RANGE_DIFF_CREATION_FACTOR_DEFAULT;
 struct diff_options diffopt = { ((void*)0) };
 int simple_color = -1;
 struct option range_diff_options[] = {
  OPT_INTEGER(0, "creation-factor", &creation_factor,
       N_("Percentage by which creation is weighted")),
  OPT_BOOL(0, "no-dual-color", &simple_color,
       N_("use simple diff colors")),
  OPT_END()
 };
 struct option *options;
 int res = 0;
 struct strbuf range1 = STRBUF_INIT, range2 = STRBUF_INIT;

 git_config(git_diff_ui_config, ((void*)0));

 repo_diff_setup(the_repository, &diffopt);

 options = parse_options_concat(range_diff_options, diffopt.parseopts);
 argc = parse_options(argc, argv, prefix, options,
        builtin_range_diff_usage, 0);

 diff_setup_done(&diffopt);


 if (!simple_color)
  diffopt.use_color = 1;

 if (argc == 2) {
  if (!strstr(argv[0], ".."))
   die(_("no .. in range: '%s'"), argv[0]);
  strbuf_addstr(&range1, argv[0]);

  if (!strstr(argv[1], ".."))
   die(_("no .. in range: '%s'"), argv[1]);
  strbuf_addstr(&range2, argv[1]);
 } else if (argc == 3) {
  strbuf_addf(&range1, "%s..%s", argv[0], argv[1]);
  strbuf_addf(&range2, "%s..%s", argv[0], argv[2]);
 } else if (argc == 1) {
  const char *b = strstr(argv[0], "..."), *a = argv[0];
  int a_len;

  if (!b) {
   error(_("single arg format must be symmetric range"));
   usage_with_options(builtin_range_diff_usage, options);
  }

  a_len = (int)(b - a);
  if (!a_len) {
   a = "HEAD";
   a_len = strlen(a);
  }
  b += 3;
  if (!*b)
   b = "HEAD";
  strbuf_addf(&range1, "%s..%.*s", b, a_len, a);
  strbuf_addf(&range2, "%.*s..%s", a_len, a, b);
 } else {
  error(_("need two commit ranges"));
  usage_with_options(builtin_range_diff_usage, options);
 }
 FREE_AND_NULL(options);

 res = show_range_diff(range1.buf, range2.buf, creation_factor,
         simple_color < 1, &diffopt);

 strbuf_release(&range1);
 strbuf_release(&range2);

 return res;
}
