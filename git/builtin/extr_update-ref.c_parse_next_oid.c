
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; int len; } ;
struct object_id {int dummy; } ;


 int PARSE_SHA1_ALLOW_EMPTY ;
 int PARSE_SHA1_OLD ;
 struct strbuf STRBUF_INIT ;
 int die (char*,char const*,char const*,...) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 char line_termination ;
 int oidclr (struct object_id*) ;
 char* parse_arg (char const*,struct strbuf*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int warning (char*,char const*,char const*) ;

__attribute__((used)) static int parse_next_oid(struct strbuf *input, const char **next,
     struct object_id *oid,
     const char *command, const char *refname,
     int flags)
{
 struct strbuf arg = STRBUF_INIT;
 int ret = 0;

 if (*next == input->buf + input->len)
  goto eof;

 if (line_termination) {

  if (!**next || **next == line_termination)
   return 1;
  if (**next != ' ')
   die("%s %s: expected SP but got: %s",
       command, refname, *next);
  (*next)++;
  *next = parse_arg(*next, &arg);
  if (arg.len) {
   if (get_oid(arg.buf, oid))
    goto invalid;
  } else {

   oidclr(oid);
  }
 } else {

  if (**next)
   die("%s %s: expected NUL but got: %s",
       command, refname, *next);
  (*next)++;
  if (*next == input->buf + input->len)
   goto eof;
  strbuf_addstr(&arg, *next);
  *next += arg.len;

  if (arg.len) {
   if (get_oid(arg.buf, oid))
    goto invalid;
  } else if (flags & PARSE_SHA1_ALLOW_EMPTY) {

   warning("%s %s: missing <newvalue>, treating as zero",
    command, refname);
   oidclr(oid);
  } else {




   ret = 1;
  }
 }

 strbuf_release(&arg);

 return ret;

 invalid:
 die(flags & PARSE_SHA1_OLD ?
     "%s %s: invalid <oldvalue>: %s" :
     "%s %s: invalid <newvalue>: %s",
     command, refname, arg.buf);

 eof:
 die(flags & PARSE_SHA1_OLD ?
     "%s %s: unexpected end of input when reading <oldvalue>" :
     "%s %s: unexpected end of input when reading <newvalue>",
     command, refname);
}
