
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; int len; } ;


 int REFNAME_ALLOW_ONELEVEL ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ check_refname_format (int ,int ) ;
 int die (char*,int ) ;
 scalar_t__ line_termination ;
 char* parse_arg (char const*,struct strbuf*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static char *parse_refname(struct strbuf *input, const char **next)
{
 struct strbuf ref = STRBUF_INIT;

 if (line_termination) {

  *next = parse_arg(*next, &ref);
 } else {

  strbuf_addstr(&ref, *next);
  *next += ref.len;
 }

 if (!ref.len) {
  strbuf_release(&ref);
  return ((void*)0);
 }

 if (check_refname_format(ref.buf, REFNAME_ALLOW_ONELEVEL))
  die("invalid ref format: %s", ref.buf);

 return strbuf_detach(&ref, ((void*)0));
}
