
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct dir_struct {int dummy; } ;
typedef scalar_t__ (* strbuf_getline_fn ) (struct strbuf*,int ) ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ check_ignore (struct dir_struct*,char const*,int,char const**) ;
 int die (char*) ;
 int maybe_flush_or_die (int ,char*) ;
 scalar_t__ nul_term_line ;
 int stdin ;
 int stdout ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int ) ;
 scalar_t__ strbuf_getline_nul (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_swap (struct strbuf*,struct strbuf*) ;
 scalar_t__ unquote_c_style (struct strbuf*,char*,int *) ;

__attribute__((used)) static int check_ignore_stdin_paths(struct dir_struct *dir, const char *prefix)
{
 struct strbuf buf = STRBUF_INIT;
 struct strbuf unquoted = STRBUF_INIT;
 char *pathspec[2] = { ((void*)0), ((void*)0) };
 strbuf_getline_fn getline_fn;
 int num_ignored = 0;

 getline_fn = nul_term_line ? strbuf_getline_nul : strbuf_getline_lf;
 while (getline_fn(&buf, stdin) != EOF) {
  if (!nul_term_line && buf.buf[0] == '"') {
   strbuf_reset(&unquoted);
   if (unquote_c_style(&unquoted, buf.buf, ((void*)0)))
    die("line is badly quoted");
   strbuf_swap(&buf, &unquoted);
  }
  pathspec[0] = buf.buf;
  num_ignored += check_ignore(dir, prefix,
         1, (const char **)pathspec);
  maybe_flush_or_die(stdout, "check-ignore to stdout");
 }
 strbuf_release(&buf);
 strbuf_release(&unquoted);
 return num_ignored;
}
