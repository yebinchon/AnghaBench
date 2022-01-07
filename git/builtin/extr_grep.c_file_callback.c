
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; int buf; } ;
struct option {struct grep_opt* value; } ;
struct grep_opt {int dummy; } ;
typedef int FILE ;


 int BUG_ON_OPT_NEG (int) ;
 int GREP_PATTERN ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int append_grep_pat (struct grep_opt*,int ,scalar_t__,char const*,int,int ) ;
 int die_errno (int ,char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int * stdin ;
 scalar_t__ strbuf_getline (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int file_callback(const struct option *opt, const char *arg, int unset)
{
 struct grep_opt *grep_opt = opt->value;
 int from_stdin;
 FILE *patterns;
 int lno = 0;
 struct strbuf sb = STRBUF_INIT;

 BUG_ON_OPT_NEG(unset);

 from_stdin = !strcmp(arg, "-");
 patterns = from_stdin ? stdin : fopen(arg, "r");
 if (!patterns)
  die_errno(_("cannot open '%s'"), arg);
 while (strbuf_getline(&sb, patterns) == 0) {

  if (sb.len == 0)
   continue;

  append_grep_pat(grep_opt, sb.buf, sb.len, arg, ++lno,
    GREP_PATTERN);
 }
 if (!from_stdin)
  fclose(patterns);
 strbuf_release(&sb);
 return 0;
}
