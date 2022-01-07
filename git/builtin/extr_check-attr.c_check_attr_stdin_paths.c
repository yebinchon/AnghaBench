
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct attr_check {int dummy; } ;
typedef scalar_t__ (* strbuf_getline_fn ) (struct strbuf*,int ) ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 int check_attr (char const*,struct attr_check*,int,char*) ;
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

__attribute__((used)) static void check_attr_stdin_paths(const char *prefix,
       struct attr_check *check,
       int collect_all)
{
 struct strbuf buf = STRBUF_INIT;
 struct strbuf unquoted = STRBUF_INIT;
 strbuf_getline_fn getline_fn;

 getline_fn = nul_term_line ? strbuf_getline_nul : strbuf_getline_lf;
 while (getline_fn(&buf, stdin) != EOF) {
  if (!nul_term_line && buf.buf[0] == '"') {
   strbuf_reset(&unquoted);
   if (unquote_c_style(&unquoted, buf.buf, ((void*)0)))
    die("line is badly quoted");
   strbuf_swap(&buf, &unquoted);
  }
  check_attr(prefix, check, collect_all, buf.buf);
  maybe_flush_or_die(stdout, "attribute to stdout");
 }
 strbuf_release(&buf);
 strbuf_release(&unquoted);
}
