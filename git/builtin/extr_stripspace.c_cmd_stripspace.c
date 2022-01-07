
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct option {int dummy; } ;
typedef enum stripspace_mode { ____Placeholder_stripspace_mode } stripspace_mode ;


 int COMMENT_LINES ;
 int N_ (char*) ;
 struct option const OPT_CMDMODE (char,char*,int*,int ,int) ;
 struct option const OPT_END () ;
 struct strbuf STRBUF_INIT ;
 int STRIP_COMMENTS ;
 int STRIP_DEFAULT ;
 int comment_lines (struct strbuf*) ;
 int die_errno (char*) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int parse_options (int,char const**,char const*,struct option const*,int ,int ) ;
 int setup_git_directory_gently (int*) ;
 scalar_t__ strbuf_read (struct strbuf*,int ,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_stripspace (struct strbuf*,int) ;
 int stripspace_usage ;
 int usage_with_options (int ,struct option const*) ;
 int write_or_die (int,int ,int ) ;

int cmd_stripspace(int argc, const char **argv, const char *prefix)
{
 struct strbuf buf = STRBUF_INIT;
 enum stripspace_mode mode = STRIP_DEFAULT;
 int nongit;

 const struct option options[] = {
  OPT_CMDMODE('s', "strip-comments", &mode,
       N_("skip and remove all lines starting with comment character"),
       STRIP_COMMENTS),
  OPT_CMDMODE('c', "comment-lines", &mode,
       N_("prepend comment character and space to each line"),
       COMMENT_LINES),
  OPT_END()
 };

 argc = parse_options(argc, argv, prefix, options, stripspace_usage, 0);
 if (argc)
  usage_with_options(stripspace_usage, options);

 if (mode == STRIP_COMMENTS || mode == COMMENT_LINES) {
  setup_git_directory_gently(&nongit);
  git_config(git_default_config, ((void*)0));
 }

 if (strbuf_read(&buf, 0, 1024) < 0)
  die_errno("could not read the input");

 if (mode == STRIP_DEFAULT || mode == STRIP_COMMENTS)
  strbuf_stripspace(&buf, mode == STRIP_COMMENTS);
 else
  comment_lines(&buf);

 write_or_die(1, buf.buf, buf.len);
 strbuf_release(&buf);
 return 0;
}
