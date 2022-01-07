
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct option {char* member_2; int* member_3; int member_6; int member_8; int * member_7; int member_5; int member_4; int member_1; int member_0; } ;
struct fmt_merge_msg_opts {int add_title; int credit_people; int shortlog_len; } ;
typedef int opts ;
typedef int FILE ;


 int DEFAULT_MERGE_LOG_LEN ;
 int N_ (char*) ;
 int OPTION_INTEGER ;
 struct option OPT_END () ;
 struct option OPT_FILENAME (float,char*,char const**,int ) ;
 struct option OPT_STRING (char,char*,char const**,int ,int ) ;
 int PARSE_OPT_HIDDEN ;
 int PARSE_OPT_OPTARG ;
 int STDOUT_FILENO ;
 struct strbuf STRBUF_INIT ;
 int die_errno (char*,...) ;
 int fileno (int *) ;
 int fmt_merge_msg (struct strbuf*,struct strbuf*,struct fmt_merge_msg_opts*) ;
 int fmt_merge_msg_config ;
 int fmt_merge_msg_usage ;
 int * fopen (char const*,char*) ;
 int git_config (int ,int *) ;
 int memset (struct fmt_merge_msg_opts*,int ,int) ;
 scalar_t__ merge_log_config ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int * stdin ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 scalar_t__ strbuf_read (struct strbuf*,int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int usage_with_options (int ,struct option*) ;
 int write_in_full (int ,int ,int ) ;

int cmd_fmt_merge_msg(int argc, const char **argv, const char *prefix)
{
 const char *inpath = ((void*)0);
 const char *message = ((void*)0);
 int shortlog_len = -1;
 struct option options[] = {
  { OPTION_INTEGER, 0, "log", &shortlog_len, N_("n"),
    N_("populate log with at most <n> entries from shortlog"),
    PARSE_OPT_OPTARG, ((void*)0), DEFAULT_MERGE_LOG_LEN },
  { OPTION_INTEGER, 0, "summary", &shortlog_len, N_("n"),
    N_("alias for --log (deprecated)"),
    PARSE_OPT_OPTARG | PARSE_OPT_HIDDEN, ((void*)0),
    DEFAULT_MERGE_LOG_LEN },
  OPT_STRING('m', "message", &message, N_("text"),
   N_("use <text> as start of message")),
  OPT_FILENAME('F', "file", &inpath, N_("file to read from")),
  OPT_END()
 };

 FILE *in = stdin;
 struct strbuf input = STRBUF_INIT, output = STRBUF_INIT;
 int ret;
 struct fmt_merge_msg_opts opts;

 git_config(fmt_merge_msg_config, ((void*)0));
 argc = parse_options(argc, argv, prefix, options, fmt_merge_msg_usage,
        0);
 if (argc > 0)
  usage_with_options(fmt_merge_msg_usage, options);
 if (shortlog_len < 0)
  shortlog_len = (merge_log_config > 0) ? merge_log_config : 0;

 if (inpath && strcmp(inpath, "-")) {
  in = fopen(inpath, "r");
  if (!in)
   die_errno("cannot open '%s'", inpath);
 }

 if (strbuf_read(&input, fileno(in), 0) < 0)
  die_errno("could not read input file");

 if (message)
  strbuf_addstr(&output, message);

 memset(&opts, 0, sizeof(opts));
 opts.add_title = !message;
 opts.credit_people = 1;
 opts.shortlog_len = shortlog_len;

 ret = fmt_merge_msg(&input, &output, &opts);
 if (ret)
  return ret;
 write_in_full(STDOUT_FILENO, output.buf, output.len);
 return 0;
}
