
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int die (char*,char const*) ;
 int isspace (char const) ;
 int strbuf_addch (struct strbuf*,int ) ;
 scalar_t__ unquote_c_style (struct strbuf*,char const*,char const**) ;

__attribute__((used)) static const char *parse_arg(const char *next, struct strbuf *arg)
{
 if (*next == '"') {
  const char *orig = next;

  if (unquote_c_style(arg, next, &next))
   die("badly quoted argument: %s", orig);
  if (*next && !isspace(*next))
   die("unexpected character after quoted argument: %s", orig);
 } else {
  while (*next && !isspace(*next))
   strbuf_addch(arg, *next++);
 }

 return next;
}
