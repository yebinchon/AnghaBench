
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int REF_NO_DEREF ;
 int die (char*,char const*) ;
 char const line_termination ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int update_flags ;

__attribute__((used)) static const char *parse_cmd_option(struct strbuf *input, const char *next)
{
 const char *rest;
 if (skip_prefix(next, "no-deref", &rest) && *rest == line_termination)
  update_flags |= REF_NO_DEREF;
 else
  die("option unknown: %s", next);
 return rest;
}
